//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/smime/SMIMECapabilityVector.java
//

#ifndef _OrgBouncycastleAsn1SmimeSMIMECapabilityVector_H_
#define _OrgBouncycastleAsn1SmimeSMIMECapabilityVector_H_

@class OrgBouncycastleAsn1ASN1EncodableVector;
@class OrgBouncycastleAsn1ASN1ObjectIdentifier;
@protocol OrgBouncycastleAsn1ASN1Encodable;

#include "J2ObjC_header.h"

@interface OrgBouncycastleAsn1SmimeSMIMECapabilityVector : NSObject {
}

- (void)addCapabilityWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)capability;

- (void)addCapabilityWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)capability
                                                         withInt:(jint)value;

- (void)addCapabilityWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)capability
                            withOrgBouncycastleAsn1ASN1Encodable:(id<OrgBouncycastleAsn1ASN1Encodable>)params;

- (OrgBouncycastleAsn1ASN1EncodableVector *)toASN1EncodableVector;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1SmimeSMIMECapabilityVector)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1SmimeSMIMECapabilityVector)

#endif // _OrgBouncycastleAsn1SmimeSMIMECapabilityVector_H_