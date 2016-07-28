//
//  LoginViewController.m
//  iOSReady1
//
//  Created by 何舒展 on 16/7/28.
//  Copyright © 2016年 何舒展. All rights reserved.
//

#import "LoginViewController.h"
#import <Masonry/Masonry.h>
//控制器，分别用于视图和模型直接交互，是mvc编程的核心内容
//用来更新界面，用来跟新和读取数据
@interface LoginViewController ()<UITextFieldDelegate>
{
    UITextField * accountTextField;
    UITextField * passwordTextField;
    UITextField * verifyCodeTextField;
    UILabel * verifyCodeLabel;
    UIButton * _daojishi;
    UIButton * lbutton;
    NSMutableArray * verifyCodeArray;//用来装验证码字符的数组
    NSArray * allUsers;//所有的用户
    int i ;
}

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor whiteColor];
//    UILabel * label = [[UILabel alloc]initWithFrame:<#(CGRect)#>]
    [self ConfigUI];
}
-(void)ConfigUI

{   //用户textView
    i=60;
    accountTextField = [UITextField new];
    accountTextField.backgroundColor = [UIColor redColor];
    [self.view addSubview:accountTextField];
    
    [accountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(300, 50));
        make.top.with.offset(90);
    }];
    //密码textfield
    passwordTextField = [UITextField new];
    passwordTextField.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:passwordTextField];
    
    [passwordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.size.mas_equalTo(CGSizeMake(300, 50));
        make.centerX.equalTo(accountTextField);
        NSLog(@"view2");
        make.top.equalTo(accountTextField.mas_bottom).with.offset(10);
    }];
    //添加倒计时按钮
    _daojishi = [UIButton new];
    _daojishi.backgroundColor = [UIColor blackColor];
    [_daojishi setTitle:@"倒计时按钮" forState:nil];
    [self.view addSubview:_daojishi];
    [_daojishi mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(100, 50));
        make.top.equalTo(passwordTextField.mas_bottom).offset(10);
        make.right.equalTo(passwordTextField.mas_right);
    }];
    //添加注册按钮
     lbutton = [UIButton new];
    [lbutton setTitle:@"Login" forState:UIControlStateNormal];
    lbutton.backgroundColor = [UIColor blueColor];
    [lbutton addTarget:self action:@selector(loginButtonClick) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:lbutton];
    [lbutton mas_makeConstraints:^(MASConstraintMaker *make) {
        //button
        make.size.mas_equalTo(CGSizeMake(100, 50));
        make.top.equalTo(passwordTextField.mas_bottom).offset(10);
        make.left.equalTo(passwordTextField.mas_left);
    }];
    //添加登录按钮
    //添加倒计时按钮
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)loginButtonClick
{
    [self daojishiButton];
}
-(void)daojishiButton
{
//    for (int i=59; i>=0; i--) {
//        NSString * time = [[NSString alloc]initWithFormat:@"%ds",i ];
//       [_daojishi setTitle:time forState:nil];
    
//    }
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(miao) userInfo:nil repeats:YES];
    
}
-(void)miao
{
    if (i==0) {
        [_daojishi setTitle:@"请重新登录" forState:nil];
    }
    else
    {
        i=i-1;
        NSString * time = [[NSString alloc]initWithFormat:@"%ds",i ];
        [_daojishi setTitle:time forState:nil];
    }
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
