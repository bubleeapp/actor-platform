//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/viewmodel/UserTypingVM.java
//

#ifndef _ImActorModelViewmodelUserTypingVM_H_
#define _ImActorModelViewmodelUserTypingVM_H_

@class AMValueModel;

#include "J2ObjC_header.h"

@interface ImActorModelViewmodelUserTypingVM : NSObject {
}

- (instancetype)initWithInt:(jint)uid;

- (void)onTypingStart;

- (void)onTypingEnd;

- (AMValueModel *)getTyping;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelViewmodelUserTypingVM)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelViewmodelUserTypingVM)

#endif // _ImActorModelViewmodelUserTypingVM_H_