//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/log/Log.java
//

#include "J2ObjC_source.h"
#include "im/actor/model/LogProvider.h"
#include "im/actor/model/log/Log.h"
#include "java/lang/Throwable.h"

@interface AMLog () {
}
@end

@implementation AMLog

id<AMLogProvider> AMLog_log_;

+ (id<AMLogProvider>)getLog {
  return AMLog_getLog();
}

+ (void)setLogWithAMLogProvider:(id<AMLogProvider>)log {
  AMLog_setLogWithAMLogProvider_(log);
}

+ (void)wWithNSString:(NSString *)tag
         withNSString:(NSString *)message {
  AMLog_wWithNSString_withNSString_(tag, message);
}

+ (void)eWithNSString:(NSString *)tag
withJavaLangThrowable:(JavaLangThrowable *)throwable {
  AMLog_eWithNSString_withJavaLangThrowable_(tag, throwable);
}

+ (void)dWithNSString:(NSString *)tag
         withNSString:(NSString *)message {
  AMLog_dWithNSString_withNSString_(tag, message);
}

+ (void)vWithNSString:(NSString *)tag
         withNSString:(NSString *)message {
  AMLog_vWithNSString_withNSString_(tag, message);
}

- (instancetype)init {
  return [super init];
}

@end

id<AMLogProvider> AMLog_getLog() {
  AMLog_init();
  return AMLog_log_;
}

void AMLog_setLogWithAMLogProvider_(id<AMLogProvider> log) {
  AMLog_init();
  AMLog_log_ = log;
}

void AMLog_wWithNSString_withNSString_(NSString *tag, NSString *message) {
  AMLog_init();
  if (AMLog_log_ != nil) {
    [AMLog_log_ w:tag withMessage:message];
  }
}

void AMLog_eWithNSString_withJavaLangThrowable_(NSString *tag, JavaLangThrowable *throwable) {
  AMLog_init();
  if (AMLog_log_ != nil) {
    [AMLog_log_ v:tag withError:throwable];
  }
}

void AMLog_dWithNSString_withNSString_(NSString *tag, NSString *message) {
  AMLog_init();
  if (AMLog_log_ != nil) {
    [AMLog_log_ d:tag withMessage:message];
  }
}

void AMLog_vWithNSString_withNSString_(NSString *tag, NSString *message) {
  AMLog_init();
  if (AMLog_log_ != nil) {
    [AMLog_log_ v:tag withMessage:message];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMLog)