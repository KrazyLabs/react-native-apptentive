
#import "RNApptentive.h"

@implementation RNApptentive


// The React Native bridge needs to know our module
RCT_EXPORT_MODULE(RNApptentive)

RCT_EXPORT_METHOD(showMessageCenter) {
  [UIApplication sharedApplication] Apptentive.shared.presentMessageCenter(from: self);
}
  
RCT_EXPORT_METHOD(engage:(NSString *)eventName) {
  Apptentive.shared.engage(event: eventName, from: self)
}

//RCT_EXPORT_METHOD(squareMe:(int)number:(RCTResponseSenderBlock)callback) {
//  callback(@[[NSNull null], [NSNumber numberWithInt:(number*number)]]);
//}


@end
