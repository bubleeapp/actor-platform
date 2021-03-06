package im.actor.server.user

import akka.actor._
import akka.contrib.pattern.ShardRegion
import akka.persistence.{ RecoveryCompleted, RecoveryFailure }
import akka.util.Timeout
import im.actor.serialization.ActorSerializer
import im.actor.server.db.DbExtension
import im.actor.server.event.TSEvent
import im.actor.server.office.{ PeerProcessor, StopOffice }
import im.actor.server.sequence.SeqUpdatesExtension
import im.actor.server.social.{ SocialExtension, SocialManagerRegion }
import org.joda.time.DateTime
import slick.driver.PostgresDriver.api._

import scala.concurrent.ExecutionContext
import scala.concurrent.duration._

trait UserEvent

trait UserCommand {
  val userId: Int
}

trait UserQuery {
  val userId: Int
}

private[user] object UserBuilder {
  def apply(ts: DateTime, e: UserEvents.Created): User =
    User(
      id = e.userId,
      accessSalt = e.accessSalt,
      name = e.name,
      countryCode = e.countryCode,
      sex = e.sex,
      phones = Seq.empty[Long],
      emails = Seq.empty[String],
      authIds = Seq.empty[Long],
      isDeleted = false,
      isBot = e.isBot,
      nickname = e.nickname,
      about = None,
      avatar = None,
      createdAt = ts.getMillis,
      internalExtensions = e.extensions,
      external = e.external
    )
}

object UserProcessor {
  def register(): Unit =
    ActorSerializer.register(
      10001 → classOf[UserCommands.NewAuth],
      10002 → classOf[UserCommands.NewAuthAck],
      10005 → classOf[UserCommands.BroadcastUpdate],
      10006 → classOf[UserCommands.BroadcastUpdateResponse],
      10007 → classOf[UserCommands.RemoveAuth],
      10008 → classOf[UserCommands.Create],
      10010 → classOf[UserCommands.Delete],
      10012 → classOf[UserCommands.ChangeName],
      10013 → classOf[UserCommands.CreateAck],
      10014 → classOf[UserCommands.ChangeCountryCode],
      10017 → classOf[UserCommands.RemoveAuthAck],
      10018 → classOf[UserCommands.DeleteAck],
      10019 → classOf[UserCommands.AddPhone],
      10020 → classOf[UserCommands.AddPhoneAck],
      10021 → classOf[UserCommands.AddEmail],
      10022 → classOf[UserCommands.AddEmailAck],
      10023 → classOf[UserCommands.ChangeCountryCodeAck],
      10024 → classOf[UserCommands.ChangeNickname],
      10025 → classOf[UserCommands.ChangeAbout],
      10026 → classOf[UserCommands.UpdateAvatar],
      10027 → classOf[UserCommands.UpdateAvatarAck],

      11001 → classOf[UserQueries.GetAuthIds],
      11002 → classOf[UserQueries.GetAuthIdsResponse],
      11003 → classOf[UserQueries.GetContactRecords],
      11004 → classOf[UserQueries.GetContactRecordsResponse],
      11005 → classOf[UserQueries.CheckAccessHash],
      11006 → classOf[UserQueries.CheckAccessHashResponse],
      11007 → classOf[UserQueries.GetApiStruct],
      11008 → classOf[UserQueries.GetApiStructResponse],
      11009 → classOf[UserQueries.GetAccessHash],
      11010 → classOf[UserQueries.GetAccessHashResponse],

      12001 → classOf[UserEvents.AuthAdded],
      12002 → classOf[UserEvents.AuthRemoved],
      12003 → classOf[UserEvents.Created],
      12006 → classOf[UserEvents.Deleted],
      12007 → classOf[UserEvents.NameChanged],
      12008 → classOf[UserEvents.CountryCodeChanged],
      12009 → classOf[UserEvents.PhoneAdded],
      12010 → classOf[UserEvents.EmailAdded],
      12011 → classOf[UserEvents.NicknameChanged],
      12012 → classOf[UserEvents.AboutChanged],
      12013 → classOf[UserEvents.AvatarUpdated],

      13000 → classOf[User]
    )

  def props: Props =
    Props(classOf[UserProcessor])
}

private[user] final class UserProcessor
  extends PeerProcessor[User, TSEvent]
  with UserCommandHandlers
  with UserQueriesHandlers
  with ActorLogging {

  import UserCommands._
  import UserQueries._

  protected implicit val system: ActorSystem = context.system
  protected implicit val ec: ExecutionContext = context.dispatcher

  protected val db: Database = DbExtension(system).db
  protected val userExt = UserExtension(system)
  protected implicit val seqUpdatesExt: SeqUpdatesExtension = SeqUpdatesExtension(system)
  protected implicit val socialRegion: SocialManagerRegion = SocialExtension(system).region

  protected implicit val timeout: Timeout = Timeout(10.seconds)

  protected val userId = self.path.name.toInt

  override def persistenceId = UserOffice.persistenceIdFor(userId)

  context.setReceiveTimeout(1.hour)

  override def updatedState(evt: TSEvent, state: User): User = {
    evt match {
      case TSEvent(_, UserEvents.AuthAdded(authId)) ⇒
        val updAuthIds = if (state.authIds contains authId) state.authIds else state.authIds :+ authId
        state.copy(authIds = updAuthIds)
      case TSEvent(_, UserEvents.AuthRemoved(authId)) ⇒
        state.copy(authIds = state.authIds filterNot (_ == authId))
      case TSEvent(_, UserEvents.CountryCodeChanged(countryCode)) ⇒
        state.copy(countryCode = countryCode)
      case TSEvent(_, UserEvents.NameChanged(name)) ⇒
        state.copy(name = name)
      case TSEvent(_, UserEvents.PhoneAdded(phone)) ⇒
        state.copy(phones = state.phones :+ phone)
      case TSEvent(_, UserEvents.EmailAdded(email)) ⇒
        state.copy(emails = state.emails :+ email)
      case TSEvent(_, UserEvents.Deleted()) ⇒
        state.copy(isDeleted = true)
      case TSEvent(_, UserEvents.NicknameChanged(nickname)) ⇒
        state.copy(nickname = nickname)
      case TSEvent(_, UserEvents.AboutChanged(about)) ⇒
        state.copy(about = about)
      case TSEvent(_, UserEvents.AvatarUpdated(avatar)) ⇒
        state.copy(avatar = avatar)
      case TSEvent(_, _: UserEvents.Created) ⇒ state
    }
  }

  override protected def handleInitCommand: Receive = {
    case Create(_, accessSalt, nickName, name, countryCode, sex, isBot, extensions, external) ⇒
      create(accessSalt, nickName, name, countryCode, sex, isBot, extensions, external)
  }

  override protected def handleCommand(state: User): Receive = {
    case NewAuth(_, authId)                        ⇒ addAuth(state, authId)
    case RemoveAuth(_, authId)                     ⇒ removeAuth(state, authId)
    case ChangeCountryCode(_, countryCode)         ⇒ changeCountryCode(state, countryCode)
    case ChangeName(_, name, clientAuthId)         ⇒ changeName(state, name, clientAuthId)
    case Delete(_)                                 ⇒ delete(state)
    case AddPhone(_, phone)                        ⇒ addPhone(state, phone)
    case AddEmail(_, email)                        ⇒ addEmail(state, email)
    case ChangeNickname(_, clientAuthId, nickname) ⇒ changeNickname(state, clientAuthId, nickname)
    case ChangeAbout(_, clientAuthId, about)       ⇒ changeAbout(state, clientAuthId, about)
    case UpdateAvatar(_, clientAuthId, avatarOpt)  ⇒ updateAvatar(state, clientAuthId, avatarOpt)
    case StopOffice                                ⇒ context stop self
    case ReceiveTimeout                            ⇒ context.parent ! ShardRegion.Passivate(stopMessage = StopOffice)
  }

  override protected def handleQuery(state: User): Receive = {
    case GetAuthIds(_)                                ⇒ getAuthIds(state)
    case GetApiStruct(_, clientUserId, clientAuthId)  ⇒ getApiStruct(state, clientUserId, clientAuthId)
    case GetContactRecords(_)                         ⇒ getContactRecords(state)
    case CheckAccessHash(_, senderAuthId, accessHash) ⇒ checkAccessHash(state, senderAuthId, accessHash)
    case GetAccessHash(_, clientAuthId)               ⇒ getAccessHash(state, clientAuthId)
    case GetUser(_)                                   ⇒ getUser(state)
  }

  protected[this] var userStateMaybe: Option[User] = None

  override def receiveRecover: Receive = {
    case TSEvent(ts, evt: UserEvents.Created) ⇒
      userStateMaybe = Some(UserBuilder(ts, evt))
    case evt: TSEvent ⇒
      userStateMaybe = userStateMaybe map (updatedState(evt, _))
    case RecoveryFailure(e) ⇒
      log.error(e, "Failed to recover")
    case RecoveryCompleted ⇒
      userStateMaybe match {
        case Some(state) ⇒
          context become working(state)
        case None ⇒
          context become initializing
      }
    case unmatched ⇒
      log.error("Unmatched recovery event {}", unmatched)
  }

}