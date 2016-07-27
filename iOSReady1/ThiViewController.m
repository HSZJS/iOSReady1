//
//  ThiViewController.m
//  iOSReady1
//
//  Created by 何舒展 on 16/7/27.
//  Copyright © 2016年 何舒展. All rights reserved.
//

#import "ThiViewController.h"

@interface ThiViewController ()

@end

@implementation ThiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    //创建一个item
    UIBarButtonItem * editButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"Edit" style:UIBarButtonItemStylePlain target:self action:@selector(editButtonItemAction:)];
    //将item放到导航的右视图item上
    self.navigationItem.rightBarButtonItem = editButtonItem;
    NSLog(@"EDITBUTTON");
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
