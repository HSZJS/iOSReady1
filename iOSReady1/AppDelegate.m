//
//  AppDelegate.m
//  iOSReady1
//
//  Created by 何舒展 on 16/7/25.
//  Copyright © 2016年 何舒展. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "SeViewController.h"
#import "ThiViewController.h"
#import "FourViewController.h"
#import "LoginViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    NSLog(@"%@",NSHomeDirectory());
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];//获取屏幕大小
    self.window.backgroundColor = [UIColor whiteColor];
    //将登陆页面作为app的根视图
    LoginViewController * lvc = [[LoginViewController alloc]init];
    self.window.rootViewController = lvc;
//    //a.初始化一个tabBar控制器
//        UITabBarController *tb=[[UITabBarController alloc]init];
//    //设置控制器为Window的根控制器
//     self.window.rootViewController=tb;
//    //创建子控制器
//    ViewController * v1 = [[ViewController alloc]init];
//    
//    v1.tabBarItem.title=@"视图一";
//    v1.tabBarItem.image=[UIImage imageNamed:@"tab_buddy_nor"];
//   
//    SeViewController * smvc = [[SeViewController alloc]init];
//    
//    smvc.tabBarItem.title=@"视图二";
//    smvc.tabBarItem.image=[UIImage imageNamed:@"tab_buddy_nor"];
//    ThiViewController * mcvc = [[ThiViewController alloc]init];
//    
//    mcvc.tabBarItem.title=@"视图三";
//    mcvc.tabBarItem.image=[UIImage imageNamed:@"tab_buddy_nor"];
//    FourViewController * sbvc = [[FourViewController alloc]init];
//    
//    sbvc.tabBarItem.title=@"视图四";
//    sbvc.tabBarItem.image=[UIImage imageNamed:@"tab_buddy_nor"];
//    
//    UINavigationController * nvc = [[UINavigationController alloc]initWithRootViewController:sbvc];
//    nvc.tabBarItem.title=@"视图四";
//    nvc.tabBarItem.image=[UIImage imageNamed:@"tab_buddy_nor"];
//
//    
//    tb.viewControllers = @[v1,smvc,mcvc,nvc];
    [self.window makeKeyAndVisible];
//    self.window.backgroundColor = [UIColor greenColor];//背景颜色
//    //创建一个标签栏视图控制器
//    ReadyTabBarViewController *NJtvc = [[ReadyTabBarViewController alloc]init];
//    //将该视图控制器作为window的根视图控制器
//    self.window.rootViewController = NJtvc ;
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
