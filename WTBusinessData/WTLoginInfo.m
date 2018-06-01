#import "WTLoginInfo.h"
#import "MJExtension.h"
#import "WTFile.h"

@implementation WTUser
@end

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

+ (void)jsonToUserInfo:(NSDictionary *)json {
    [WTLoginInfo shareInstance].user = [WTUser mj_objectWithKeyValues:json];
}

+ (BOOL)isLogin {
    BOOL t = NO;
    if ([WTLoginInfo shareInstance].user!=nil) {
        t = YES;
    }
    return NO;
}

+ (NSString *)loginFilePath {
    NSString *path = [WTFile fileDocDir:@"login.txt"];
    return path;
}

+ (void)writeLoginInfo {
    WTUser *uu = [WTLoginInfo shareInstance].user;
    if (uu) {
        NSDictionary *dic = uu.mj_keyValues;
        [dic writeToFile:[WTLoginInfo loginFilePath] atomically:YES];
    }
}

+ (void)readLoginInfo {
    if ([WTFile fileExistAtPath:[WTLoginInfo loginFilePath]]) {
        NSDictionary *json = [NSDictionary dictionaryWithContentsOfFile:[WTLoginInfo loginFilePath]];
        [WTLoginInfo shareInstance].user = [WTUser mj_objectWithKeyValues:json];
    }
}
@end
