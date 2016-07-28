//
//  IndexViewController.m
//  iOSReady1
//
//  Created by 何舒展 on 16/7/28.
//  Copyright © 2016年 何舒展. All rights reserved.
//

#import "IndexViewController.h"
#import "AppDelegate.h"
#import "ViewController.h"
#import "SeViewController.h"
#import "ThiViewController.h"
#import "FourViewController.h"
@interface IndexViewController ()

@end

@implementation IndexViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
-(void)ConfigIndex
{
    NSLog(@"%@",NSHomeDirectory());
    self.view = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];//获取屏幕大小
    //a.初始化一个tabBar控制器
    UITabBarController *tb=[[UITabBarController alloc]init];
    //设置控制器为Window的根控制器
//    self.view.inputViewController=tb;
    //创建子控制器
    ViewController * v1 = [[ViewController alloc]init];
    
    v1.tabBarItem.title=@"视图一";
    v1.tabBarItem.image=[UIImage imageNamed:@"tab_buddy_nor"];
    
    SeViewController * smvc = [[SeViewController alloc]init];
    
    smvc.tabBarItem.title=@"视图二";
    smvc.tabBarItem.image=[UIImage imageNamed:@"tab_buddy_nor"];
    ThiViewController * mcvc = [[ThiViewController alloc]init];
    
    mcvc.tabBarItem.title=@"视图三";
    mcvc.tabBarItem.image=[UIImage imageNamed:@"tab_buddy_nor"];
    FourViewController * sbvc = [[FourViewController alloc]init];
    
    sbvc.tabBarItem.title=@"视图四";
    sbvc.tabBarItem.image=[UIImage imageNamed:@"tab_buddy_nor"];
    
    UINavigationController * nvc = [[UINavigationController alloc]initWithRootViewController:sbvc];
    nvc.tabBarItem.title=@"视图四";
    nvc.tabBarItem.image=[UIImage imageNamed:@"tab_buddy_nor"];
    
    
    tb.viewControllers = @[v1,smvc,mcvc,nvc];
//    [self.view makeKeyAndVisible];
    //    self.window.backgroundColor = [UIColor greenColor];//背景颜色
    //    //创建一个标签栏视图控制器
    //    ReadyTabBarViewController *NJtvc = [[ReadyTabBarViewController alloc]init];
    //    //将该视图控制器作为window的根视图控制器
    //    self.window.rootViewController = NJtvc ;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
