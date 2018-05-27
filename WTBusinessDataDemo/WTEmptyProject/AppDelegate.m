//
//  AppDelegate.m
//  WTEmptyProject
//
//  Created by 计恩良 on 2018/5/27.
//  Copyright © 2018年 计恩良. All rights reserved.
//

#import "AppDelegate.h"
#import "WTLoginInfo.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor redColor];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = vc;
    
    [self.window makeKeyAndVisible];
    
    NSMutableDictionary *param = [NSMutableDictionary dictionary];
    [param setObject:@"15105609556" forKey:@"phoneNum"];
    [param setObject:[@"12345678" md5] forKey:@"password"];
    [param setObject:@"Did" forKey:@"did"];
    [param setObject:@"1" forKey:@"accountType"];

    [WTHttpUtil POSTWithURL:@"http://itma.openspeech.cn:8088/itmaDevice/UserLoginCMCC.do" parameters:param success:^(id responseObject) {
        NSLog(@"aaaaaa");
        if ([[responseObject[@"code"] strRelay] isEqualToString:@"1000"]) {
            NSDictionary *dic = responseObject[@"content"];
            if (dic) {
//                WTLoginInfo *info = [[WTLoginInfo shareInstance] jsonObjectToLoginInfo:dic];
//                NSLog(@"aaaaaa");
            }
        }
    } failure:^(NSError *error) {
        NSLog(@"bbbbbbb");
    }];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
