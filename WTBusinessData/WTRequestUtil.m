#import "WTRequestUtil.h"
#import "NSString+Category.h"
#import "WTUtil.h"
@implementation WTRequestUtil
+ (void)loginByPhone:(NSString *)phone password:(NSString *)pass loginType:(int)loginType success:(WTHttpRequestSuccess)success failure:(WTHttpRequestFailed)failure {
    NSMutableDictionary *param = [NSMutableDictionary dictionary];
    [param setObject:phone forKey:@"phoneNum"];
    [param setObject:[pass md5] forKey:@"password"];
    [param setObject:[NSNumber numberWithInt:loginType] forKey:@"accountType"];
    [param setObject:@"Did" forKey:@"did"];

    [WTHttpUtil POSTWithURL:[NSString stringWithFormat:@"%@%@",WT_APP_Host,WT_APP_Login_Path] parameters:param success:^(id responseObject) {
        if ([[WTUtil strRelay:responseObject[@"code"]] isEqualToString:@"1000"]) {
            success(responseObject);
        } else {
            
        }
    } failure:^(NSError *error) {
        NSLog(@"bbbbbbb");
        failure(error);
    }];
}
@end
