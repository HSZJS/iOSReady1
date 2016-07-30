//
//  TabViewController.m
//  iOSReady1
//
//  Created by 何舒展 on 16/7/30.
//  Copyright © 2016年 何舒展. All rights reserved.
//

#import "TabViewController.h"
#import "AppDelegate.h"
#import "ViewController.h"
#import "SeViewController.h"
#import "ThiViewController.h"
#import "FourViewController.h"
@interface TabViewController ()

@end

@implementation TabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController setHidesBarsOnSwipe:NO];
    // Do any additional setup after loading the view.
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
    self.viewControllers=@[v1,smvc,mcvc,nvc];
   
    

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
