//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/network/parser/BaseParser.java
//

#ifndef _ImActorModelNetworkParserBaseParser_H_
#define _ImActorModelNetworkParserBaseParser_H_

@class IOSByteArray;

#include "J2ObjC_header.h"

@interface ImActorModelNetworkParserBaseParser : NSObject {
}

- (id)readWithInt:(jint)type
    withByteArray:(IOSByteArray *)payload;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelNetworkParserBaseParser)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelNetworkParserBaseParser)

#endif // _ImActorModelNetworkParserBaseParser_H_