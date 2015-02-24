//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/jvm/JavaThreading.java
//

#ifndef _AMJavaThreading_H_
#define _AMJavaThreading_H_

@class AMAtomicIntegerCompat;
@class AMAtomicLongCompat;
@class AMThreadLocalCompat;
@class DKActorDispatcher;
@class DKActorSystem;
@class DKThreadPriorityEnum;

#include "J2ObjC_header.h"
#include "im/actor/model/Threading.h"

@interface AMJavaThreading : NSObject < AMThreading > {
}

- (instancetype)init;

- (jlong)getActorTime;

- (jlong)getCurrentTime;

- (jint)getCoresCount;

- (AMAtomicIntegerCompat *)createAtomicInt:(jint)value;

- (AMAtomicLongCompat *)createAtomicLong:(jlong)value;

- (AMThreadLocalCompat *)createThreadLocal;

- (DKActorDispatcher *)createDispatcherWithNSString:(NSString *)name
                                            withInt:(jint)threadsCount
                           withDKThreadPriorityEnum:(DKThreadPriorityEnum *)priority
                                  withDKActorSystem:(DKActorSystem *)actorSystem;

- (DKActorDispatcher *)createDefaultDispatcherWithNSString:(NSString *)name
                                  withDKThreadPriorityEnum:(DKThreadPriorityEnum *)priority
                                         withDKActorSystem:(DKActorSystem *)actorSystem;

@end

J2OBJC_EMPTY_STATIC_INIT(AMJavaThreading)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

typedef AMJavaThreading ImActorModelJvmJavaThreading;

J2OBJC_TYPE_LITERAL_HEADER(AMJavaThreading)

#endif // _AMJavaThreading_H_