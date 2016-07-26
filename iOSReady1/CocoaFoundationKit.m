//
//  CocoaFoundationKit.m
//  iOSReady1
//
//  Created by 何舒展 on 16/7/26.
//  Copyright © 2016年 何舒展. All rights reserved.
//

#import "CocoaFoundationKit.h"
#import <Foundation/Foundation.h>
@interface CocoaFoundationKit ()

@end

@implementation CocoaFoundationKit

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString * hello1 = @"hello";
    NSString * hello2 = @"hello";
    if ([hello1 isEqualToString:hello2]) {
        NSLog(@"相同");
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
