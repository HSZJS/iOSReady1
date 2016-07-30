//
//  ThiViewController.m
//  iOSReady1
//
//  Created by 何舒展 on 16/7/27.
//  Copyright © 2016年 何舒展. All rights reserved.
//

#import "ThiViewController.h"
#import <Masonry.h>
@interface ThiViewController ()
{
    UIButton * bfir;
    UIButton * bsec;
    UIButton * bthi;
    UIButton * bfur;
    UIButton * bootmbutton;
    
    BOOL bf;
    BOOL bs;
    BOOL bt;
    BOOL bfour;
}

@end

@implementation ThiViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor redColor];
    [self ConfigUI];
   
}
-(void)viewWillAppear:(BOOL)animated
{
    self.title = @"订单";
}
-(void)ConfigUI
{
    //滑块
    UIScrollView * sv = [[UIScrollView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    sv.backgroundColor = [UIColor cyanColor];
    sv.contentSize = self.view.frame.size;
    [self.view addSubview:sv];
    //图片采用masonry来创建自动适配大小的图片是最好的。jason.png
    UIImageView * uv = [[UIImageView alloc]init];
    UIImage * uig = [UIImage imageNamed:@"jason"];
    uv.image = uig;
    [self.view addSubview:uv];
    //图片视图自动适配
//    [lbutton mas_makeConstraints:^(MASConstraintMaker *make) {
//        //button
//        make.size.mas_equalTo(CGSizeMake(100, 50));
//        make.top.equalTo(passwordTextField.mas_bottom).offset(10);
//        make.left.equalTo(passwordTextField.mas_left);
//    }];
    [uv mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.size.mas_equalTo(CGSizeMake(320, 100));
        make.top.mas_equalTo(self.view).offset(64);
        make.left.mas_equalTo(self.view).offset(10);
        make.right.mas_equalTo(self.view).offset(-10);
        make.bottom.mas_equalTo(self.view).offset(-400);
    }];
    //bfir
    bfir  = [[UIButton alloc]init];
    bf = YES;
    [bfir setTitle:@"套餐一" forState:UIControlStateNormal];
    [self.view addSubview:bfir];
    
    bfir.backgroundColor = [UIColor grayColor];
    [bfir addTarget:self action:@selector(bfirClick) forControlEvents:UIControlEventAllEvents];
    
    [bfir mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(60, 80));
        make.left.mas_equalTo(self.view).offset(10);
        make.top.mas_equalTo(uv.mas_bottom).offset(10);
        
    }];
    bsec  = [[UIButton alloc]init];
    [bsec setTitle:@"套餐二" forState:UIControlStateNormal];
    [self.view addSubview:bsec];
    bsec.backgroundColor = [UIColor grayColor];
    [bsec addTarget:nil action:@selector(BseconClick) forControlEvents:UIControlEventAllEvents];
    bs = YES;
    [bsec mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(60, 80));
        make.left.mas_equalTo(bfir.mas_right).offset(10);
        make.top.mas_equalTo(uv.mas_bottom).offset(10);
    }];
    
    bthi  = [[UIButton alloc]init];
    bfour = [[UIButton alloc]init];
    //提交button
    bootmbutton = [[UIButton alloc]init];
    [self.view addSubview:bootmbutton];
    [bootmbutton addTarget:nil action:@selector(submit) forControlEvents:UIControlEventTouchDown];
    bootmbutton.backgroundColor = [UIColor greenColor];
    [bootmbutton setTitle:@"提交" forState:UIControlStateNormal];
    [bootmbutton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(sv).offset(10);
        make.right.mas_equalTo(sv).offset(-10);
        make.top.mas_equalTo(sv).offset(600);
        make.bottom.mas_equalTo(sv).offset(-20);
    }];
    
}
-(void)bfirClick
{

    if (bf) {
        bfir.backgroundColor = [UIColor orangeColor];
        bf= NO;
        bsec.backgroundColor = [UIColor grayColor];
        bs = YES;
        NSLog(@"orage");
        
        
    }
    else
    {
        bfir.backgroundColor = [UIColor grayColor];
        NSLog(@"gray");
        bf = YES;
    }
    
    
}
-(void)BseconClick
{
    if (bs) {
        bsec.backgroundColor= [UIColor orangeColor];
        bs = NO;
        bfir.backgroundColor = [UIColor grayColor];
        bf = YES;
        
        
    }
    else
    {
        bsec.backgroundColor = [UIColor grayColor];
        bs = YES;
    }
}
-(void)submit
{
    if (!bf) {
        NSLog(@"套餐一");

    }
   
    else if (!bs) {
        NSLog(@"套餐二");
        
    }
    
    
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
