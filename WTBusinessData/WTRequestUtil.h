#import <Foundation/Foundation.h>
#import "WTHttpUtil.h"
#define WT_APP_Host  @"http://itma.openspeech.cn:8088"

#define WT_APP_Login_Path   @"/itmaDevice/UserLoginCMCC.do"

@interface WTRequestUtil : NSObject{
}
+ (void)loginByPhone:(NSString *)phone password:(NSString *)pass loginType:(int)loginType success:(WTHttpRequestSuccess)success failure:(WTHttpRequestFailed)failure;
@end
