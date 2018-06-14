#import <Foundation/Foundation.h>
#import "WTHttpUtil.h"
#define WT_APP_Host  @"http://itma.openspeech.cn:8088/itmaDevice/"

#define WT_APP_Login_Path   @"UserLoginCMCC.do"
#define WT_APP_UpdateUserInfo_Path   @"UpdateUserInfoCMCC,.do"

@interface WTRequestUtil : NSObject{
}
//用户登录接口
+ (void)loginByPhone:(NSString *)phone password:(NSString *)pass loginType:(int)loginType success:(WTHttpRequestSuccess)success failure:(WTHttpRequestFailed)failure;
//更新用户资料接口
+ (void)myInfoUpdateRequest:(NSString *)fieldName fieldValue:(NSString *)fieldValue loginType:(int)loginType userId:(NSString *)uuid success:(WTHttpRequestSuccess)success failure:(WTHttpRequestFailed)failure;
@end
