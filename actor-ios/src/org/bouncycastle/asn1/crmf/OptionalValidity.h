//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/crmf/OptionalValidity.java
//

#ifndef _OrgBouncycastleAsn1CrmfOptionalValidity_H_
#define _OrgBouncycastleAsn1CrmfOptionalValidity_H_

@class OrgBouncycastleAsn1ASN1Primitive;
@class OrgBouncycastleAsn1ASN1Sequence;
@class OrgBouncycastleAsn1X509Time;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/ASN1Object.h"

@interface OrgBouncycastleAsn1CrmfOptionalValidity : OrgBouncycastleAsn1ASN1Object {
}

+ (OrgBouncycastleAsn1CrmfOptionalValidity *)getInstanceWithId:(id)o;

- (instancetype)initWithOrgBouncycastleAsn1X509Time:(OrgBouncycastleAsn1X509Time *)notBefore
                    withOrgBouncycastleAsn1X509Time:(OrgBouncycastleAsn1X509Time *)notAfter;

- (OrgBouncycastleAsn1X509Time *)getNotBefore;

- (OrgBouncycastleAsn1X509Time *)getNotAfter;

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1CrmfOptionalValidity)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT OrgBouncycastleAsn1CrmfOptionalValidity *OrgBouncycastleAsn1CrmfOptionalValidity_getInstanceWithId_(id o);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1CrmfOptionalValidity)

#endif // _OrgBouncycastleAsn1CrmfOptionalValidity_H_