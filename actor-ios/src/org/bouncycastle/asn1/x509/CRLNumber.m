//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/x509/CRLNumber.java
//

#include "J2ObjC_source.h"
#include "java/math/BigInteger.h"
#include "org/bouncycastle/asn1/ASN1Integer.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/x509/CRLNumber.h"

@interface OrgBouncycastleAsn1X509CRLNumber () {
 @public
  JavaMathBigInteger *number_;
}
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1X509CRLNumber, number_, JavaMathBigInteger *)

@implementation OrgBouncycastleAsn1X509CRLNumber

- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)number {
  if (self = [super init]) {
    self->number_ = number;
  }
  return self;
}

- (JavaMathBigInteger *)getCRLNumber {
  return number_;
}

- (NSString *)description {
  return JreStrcat("$@", @"CRLNumber: ", [self getCRLNumber]);
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  return [[OrgBouncycastleAsn1ASN1Integer alloc] initWithJavaMathBigInteger:number_];
}

+ (OrgBouncycastleAsn1X509CRLNumber *)getInstanceWithId:(id)o {
  return OrgBouncycastleAsn1X509CRLNumber_getInstanceWithId_(o);
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1X509CRLNumber *)other {
  [super copyAllFieldsTo:other];
  other->number_ = number_;
}

@end

OrgBouncycastleAsn1X509CRLNumber *OrgBouncycastleAsn1X509CRLNumber_getInstanceWithId_(id o) {
  OrgBouncycastleAsn1X509CRLNumber_init();
  if ([o isKindOfClass:[OrgBouncycastleAsn1X509CRLNumber class]]) {
    return (OrgBouncycastleAsn1X509CRLNumber *) check_class_cast(o, [OrgBouncycastleAsn1X509CRLNumber class]);
  }
  else if (o != nil) {
    return [[OrgBouncycastleAsn1X509CRLNumber alloc] initWithJavaMathBigInteger:[((OrgBouncycastleAsn1ASN1Integer *) nil_chk(OrgBouncycastleAsn1ASN1Integer_getInstanceWithId_(o))) getValue]];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1X509CRLNumber)