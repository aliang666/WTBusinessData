#import <Foundation/Foundation.h>
@interface WTUser : NSObject{
}
@property (nonatomic,copy) NSString *address;
@property (nonatomic,copy) NSString *age;
@property (nonatomic,copy) NSString *authorize;
@property (nonatomic,copy) NSString *birthday;
@property (nonatomic,copy) NSString *email;
@property (nonatomic,copy) NSString *id;
@property (nonatomic,copy) NSString *industry;
@property (nonatomic,copy) NSString *nickname;
@property (nonatomic,copy) NSString *occupation;
@property (nonatomic,copy) NSString *phoneNum;
@property (nonatomic,copy) NSString *remainLicenseDays;
@property (nonatomic,copy) NSString *sex;
@property (nonatomic,copy) NSString *iMLogin;
@end

@interface WTLoginInfo : NSObject{
}
@property (nonatomic,strong) WTUser *user;
+ (instancetype)shareInstance;
//json转用户信息
+ (void)jsonToUserInfo:(NSDictionary *)json;
//判断是否登录
+ (BOOL)isLogin;
//写用户信息
+ (void)writeLoginInfo;
//从文件读取用户信息
+ (void)readLoginInfo;
//是否是第三方登录
+ (BOOL)isThird;
@end


