//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/crmf/CertId.java
//

#ifndef _OrgBouncycastleAsn1CrmfCertId_H_
#define _OrgBouncycastleAsn1CrmfCertId_H_

@class JavaMathBigInteger;
@class OrgBouncycastleAsn1ASN1Integer;
@class OrgBouncycastleAsn1ASN1Primitive;
@class OrgBouncycastleAsn1ASN1Sequence;
@class OrgBouncycastleAsn1ASN1TaggedObject;
@class OrgBouncycastleAsn1X509GeneralName;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/ASN1Object.h"

@interface OrgBouncycastleAsn1CrmfCertId : OrgBouncycastleAsn1ASN1Object {
}

+ (OrgBouncycastleAsn1CrmfCertId *)getInstanceWithId:(id)o;

+ (OrgBouncycastleAsn1CrmfCertId *)getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)obj
                                                                          withBoolean:(jboolean)isExplicit;

- (instancetype)initWithOrgBouncycastleAsn1X509GeneralName:(OrgBouncycastleAsn1X509GeneralName *)issuer
                                    withJavaMathBigInteger:(JavaMathBigInteger *)serialNumber;

- (instancetype)initWithOrgBouncycastleAsn1X509GeneralName:(OrgBouncycastleAsn1X509GeneralName *)issuer
                        withOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)serialNumber;

- (OrgBouncycastleAsn1X509GeneralName *)getIssuer;

- (OrgBouncycastleAsn1ASN1Integer *)getSerialNumber;

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1CrmfCertId)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT OrgBouncycastleAsn1CrmfCertId *OrgBouncycastleAsn1CrmfCertId_getInstanceWithId_(id o);

FOUNDATION_EXPORT OrgBouncycastleAsn1CrmfCertId *OrgBouncycastleAsn1CrmfCertId_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(OrgBouncycastleAsn1ASN1TaggedObject *obj, jboolean isExplicit);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1CrmfCertId)

#endif // _OrgBouncycastleAsn1CrmfCertId_H_