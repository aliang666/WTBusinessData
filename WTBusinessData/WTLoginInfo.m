#import "WTLoginInfo.h"

@implementation WTLoginInfo
+ (instancetype)shareInstance
{
    static WTLoginInfo *share = nil ;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        share = [[WTLoginInfo alloc]init];
    });
    return share;
}
@end
