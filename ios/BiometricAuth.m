#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(BiometricAuth, NSObject)

RCT_EXTERN_METHOD(
                  authorize: (RCTPromiseResolveBlock)resolve
                  rejecter: (RCTPromiseRejectBlock)reject
                  )

+ (BOOL)requiresMainQueueSetup
{
  return NO;
}

@end
