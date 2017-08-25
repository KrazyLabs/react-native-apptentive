
#import "RNApptentive.h"

@implementation RNApptentive


// The React Native bridge needs to know our module
RCT_EXPORT_MODULE(RNApptentive)

RCT_EXPORT_METHOD(showMessageCenter) {}
  
RCT_EXPORT_METHOD(engage:(NSString *)eventName) {
    UIViewController* rootViewController = [UIApplication sharedApplication].keyWindow.rootViewController;
    [[Apptentive shared] engage:eventName fromViewController: rootViewController];
}
  
@end
