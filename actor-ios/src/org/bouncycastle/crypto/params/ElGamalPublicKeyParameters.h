//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/crypto/params/ElGamalPublicKeyParameters.java
//

#ifndef _OrgBouncycastleCryptoParamsElGamalPublicKeyParameters_H_
#define _OrgBouncycastleCryptoParamsElGamalPublicKeyParameters_H_

@class JavaMathBigInteger;
@class OrgBouncycastleCryptoParamsElGamalParameters;

#include "J2ObjC_header.h"
#include "org/bouncycastle/crypto/params/ElGamalKeyParameters.h"

@interface OrgBouncycastleCryptoParamsElGamalPublicKeyParameters : OrgBouncycastleCryptoParamsElGamalKeyParameters {
}

- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)y
withOrgBouncycastleCryptoParamsElGamalParameters:(OrgBouncycastleCryptoParamsElGamalParameters *)params;

- (JavaMathBigInteger *)getY;

- (NSUInteger)hash;

- (jboolean)isEqual:(id)obj;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleCryptoParamsElGamalPublicKeyParameters)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleCryptoParamsElGamalPublicKeyParameters)

#endif // _OrgBouncycastleCryptoParamsElGamalPublicKeyParameters_H_