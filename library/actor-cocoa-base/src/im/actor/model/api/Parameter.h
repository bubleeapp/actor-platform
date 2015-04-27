//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/Parameter.java
//

#ifndef _ImActorModelApiParameter_H_
#define _ImActorModelApiParameter_H_

@class BSBserValues;
@class BSBserWriter;

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@interface ImActorModelApiParameter : BSBserObject {
}

- (instancetype)initWithNSString:(NSString *)key
                    withNSString:(NSString *)value;

- (instancetype)init;

- (NSString *)getKey;

- (NSString *)getValue;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiParameter)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiParameter)

#endif // _ImActorModelApiParameter_H_