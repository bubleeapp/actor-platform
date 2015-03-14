//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/esf/CrlOcspRef.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Enumeration.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/DERTaggedObject.h"
#include "org/bouncycastle/asn1/esf/CrlListID.h"
#include "org/bouncycastle/asn1/esf/CrlOcspRef.h"
#include "org/bouncycastle/asn1/esf/OcspListID.h"
#include "org/bouncycastle/asn1/esf/OtherRevRefs.h"

@interface OrgBouncycastleAsn1EsfCrlOcspRef () {
 @public
  OrgBouncycastleAsn1EsfCrlListID *crlids_;
  OrgBouncycastleAsn1EsfOcspListID *ocspids_;
  OrgBouncycastleAsn1EsfOtherRevRefs *otherRev_;
}
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1EsfCrlOcspRef, crlids_, OrgBouncycastleAsn1EsfCrlListID *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1EsfCrlOcspRef, ocspids_, OrgBouncycastleAsn1EsfOcspListID *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1EsfCrlOcspRef, otherRev_, OrgBouncycastleAsn1EsfOtherRevRefs *)

@implementation OrgBouncycastleAsn1EsfCrlOcspRef

+ (OrgBouncycastleAsn1EsfCrlOcspRef *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1EsfCrlOcspRef_getInstanceWithId_(obj);
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    id<JavaUtilEnumeration> e = [((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) getObjects];
    while ([((id<JavaUtilEnumeration>) nil_chk(e)) hasMoreElements]) {
      OrgBouncycastleAsn1DERTaggedObject *o = (OrgBouncycastleAsn1DERTaggedObject *) check_class_cast([e nextElement], [OrgBouncycastleAsn1DERTaggedObject class]);
      switch ([((OrgBouncycastleAsn1DERTaggedObject *) nil_chk(o)) getTagNo]) {
        case 0:
        self->crlids_ = OrgBouncycastleAsn1EsfCrlListID_getInstanceWithId_([o getObject]);
        break;
        case 1:
        self->ocspids_ = OrgBouncycastleAsn1EsfOcspListID_getInstanceWithId_([o getObject]);
        break;
        case 2:
        self->otherRev_ = OrgBouncycastleAsn1EsfOtherRevRefs_getInstanceWithId_([o getObject]);
        break;
        default:
        @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"illegal tag"];
      }
    }
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1EsfCrlListID:(OrgBouncycastleAsn1EsfCrlListID *)crlids
                   withOrgBouncycastleAsn1EsfOcspListID:(OrgBouncycastleAsn1EsfOcspListID *)ocspids
                 withOrgBouncycastleAsn1EsfOtherRevRefs:(OrgBouncycastleAsn1EsfOtherRevRefs *)otherRev {
  if (self = [super init]) {
    self->crlids_ = crlids;
    self->ocspids_ = ocspids;
    self->otherRev_ = otherRev;
  }
  return self;
}

- (OrgBouncycastleAsn1EsfCrlListID *)getCrlids {
  return self->crlids_;
}

- (OrgBouncycastleAsn1EsfOcspListID *)getOcspids {
  return self->ocspids_;
}

- (OrgBouncycastleAsn1EsfOtherRevRefs *)getOtherRev {
  return self->otherRev_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  if (nil != self->crlids_) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1DERTaggedObject alloc] initWithBoolean:YES withInt:0 withOrgBouncycastleAsn1ASN1Encodable:[self->crlids_ toASN1Primitive]]];
  }
  if (nil != self->ocspids_) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1DERTaggedObject alloc] initWithBoolean:YES withInt:1 withOrgBouncycastleAsn1ASN1Encodable:[self->ocspids_ toASN1Primitive]]];
  }
  if (nil != self->otherRev_) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1DERTaggedObject alloc] initWithBoolean:YES withInt:2 withOrgBouncycastleAsn1ASN1Encodable:[self->otherRev_ toASN1Primitive]]];
  }
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1EsfCrlOcspRef *)other {
  [super copyAllFieldsTo:other];
  other->crlids_ = crlids_;
  other->ocspids_ = ocspids_;
  other->otherRev_ = otherRev_;
}

@end

OrgBouncycastleAsn1EsfCrlOcspRef *OrgBouncycastleAsn1EsfCrlOcspRef_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1EsfCrlOcspRef_init();
  if ([obj isKindOfClass:[OrgBouncycastleAsn1EsfCrlOcspRef class]]) {
    return (OrgBouncycastleAsn1EsfCrlOcspRef *) check_class_cast(obj, [OrgBouncycastleAsn1EsfCrlOcspRef class]);
  }
  else if (obj != nil) {
    return [[OrgBouncycastleAsn1EsfCrlOcspRef alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(obj)];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1EsfCrlOcspRef)