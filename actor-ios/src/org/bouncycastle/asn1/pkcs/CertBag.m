//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/pkcs/CertBag.java
//

#include "J2ObjC_source.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1ObjectIdentifier.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/DERTaggedObject.h"
#include "org/bouncycastle/asn1/pkcs/CertBag.h"

@interface OrgBouncycastleAsn1PkcsCertBag () {
 @public
  OrgBouncycastleAsn1ASN1ObjectIdentifier *certId_;
  id<OrgBouncycastleAsn1ASN1Encodable> certValue_;
}
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1PkcsCertBag, certId_, OrgBouncycastleAsn1ASN1ObjectIdentifier *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1PkcsCertBag, certValue_, id<OrgBouncycastleAsn1ASN1Encodable>)

@implementation OrgBouncycastleAsn1PkcsCertBag

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    self->certId_ = (OrgBouncycastleAsn1ASN1ObjectIdentifier *) check_class_cast([((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) getObjectAtWithInt:0], [OrgBouncycastleAsn1ASN1ObjectIdentifier class]);
    self->certValue_ = [((OrgBouncycastleAsn1DERTaggedObject *) nil_chk(((OrgBouncycastleAsn1DERTaggedObject *) check_class_cast([seq getObjectAtWithInt:1], [OrgBouncycastleAsn1DERTaggedObject class])))) getObject];
  }
  return self;
}

+ (OrgBouncycastleAsn1PkcsCertBag *)getInstanceWithId:(id)o {
  return OrgBouncycastleAsn1PkcsCertBag_getInstanceWithId_(o);
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)certId
                           withOrgBouncycastleAsn1ASN1Encodable:(id<OrgBouncycastleAsn1ASN1Encodable>)certValue {
  if (self = [super init]) {
    self->certId_ = certId;
    self->certValue_ = certValue;
  }
  return self;
}

- (OrgBouncycastleAsn1ASN1ObjectIdentifier *)getCertId {
  return certId_;
}

- (id<OrgBouncycastleAsn1ASN1Encodable>)getCertValue {
  return certValue_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:certId_];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1DERTaggedObject alloc] initWithInt:0 withOrgBouncycastleAsn1ASN1Encodable:certValue_]];
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1PkcsCertBag *)other {
  [super copyAllFieldsTo:other];
  other->certId_ = certId_;
  other->certValue_ = certValue_;
}

@end

OrgBouncycastleAsn1PkcsCertBag *OrgBouncycastleAsn1PkcsCertBag_getInstanceWithId_(id o) {
  OrgBouncycastleAsn1PkcsCertBag_init();
  if ([o isKindOfClass:[OrgBouncycastleAsn1PkcsCertBag class]]) {
    return (OrgBouncycastleAsn1PkcsCertBag *) check_class_cast(o, [OrgBouncycastleAsn1PkcsCertBag class]);
  }
  else if (o != nil) {
    return [[OrgBouncycastleAsn1PkcsCertBag alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(o)];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1PkcsCertBag)