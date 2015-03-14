//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/x9/DHPublicKey.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/bouncycastle/asn1/ASN1Integer.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1TaggedObject.h"
#include "org/bouncycastle/asn1/x9/DHPublicKey.h"

@interface OrgBouncycastleAsn1X9DHPublicKey () {
 @public
  OrgBouncycastleAsn1ASN1Integer *y_;
}
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1X9DHPublicKey, y_, OrgBouncycastleAsn1ASN1Integer *)

@implementation OrgBouncycastleAsn1X9DHPublicKey

+ (OrgBouncycastleAsn1X9DHPublicKey *)getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)obj
                                                                             withBoolean:(jboolean)explicit_ {
  return OrgBouncycastleAsn1X9DHPublicKey_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, explicit_);
}

+ (OrgBouncycastleAsn1X9DHPublicKey *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1X9DHPublicKey_getInstanceWithId_(obj);
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)y {
  if (self = [super init]) {
    if (y == nil) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"'y' cannot be null"];
    }
    self->y_ = y;
  }
  return self;
}

- (OrgBouncycastleAsn1ASN1Integer *)getY {
  return self->y_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  return self->y_;
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1X9DHPublicKey *)other {
  [super copyAllFieldsTo:other];
  other->y_ = y_;
}

@end

OrgBouncycastleAsn1X9DHPublicKey *OrgBouncycastleAsn1X9DHPublicKey_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(OrgBouncycastleAsn1ASN1TaggedObject *obj, jboolean explicit_) {
  OrgBouncycastleAsn1X9DHPublicKey_init();
  return OrgBouncycastleAsn1X9DHPublicKey_getInstanceWithId_(OrgBouncycastleAsn1ASN1Integer_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, explicit_));
}

OrgBouncycastleAsn1X9DHPublicKey *OrgBouncycastleAsn1X9DHPublicKey_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1X9DHPublicKey_init();
  if (obj == nil || [obj isKindOfClass:[OrgBouncycastleAsn1X9DHPublicKey class]]) {
    return (OrgBouncycastleAsn1X9DHPublicKey *) check_class_cast(obj, [OrgBouncycastleAsn1X9DHPublicKey class]);
  }
  if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1Integer class]]) {
    return [[OrgBouncycastleAsn1X9DHPublicKey alloc] initWithOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *) check_class_cast(obj, [OrgBouncycastleAsn1ASN1Integer class])];
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$$", @"Invalid DHPublicKey: ", [[nil_chk(obj) getClass] getName])];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1X9DHPublicKey)