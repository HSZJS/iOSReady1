//
//  cocoaFoundationKitClass.m
//  iOSReady1
//
//  Created by 何舒展 on 16/7/26.
//  Copyright © 2016年 何舒展. All rights reserved.
//

#import "cocoaFoundationKitClass.h"

@implementation cocoaFoundationKitClass
-(void)equalString{
    NSString * hello1 = @"hello";
    NSString * hello2 = @"hello";
    if ([hello1 isEqualToString:hello2]) {
        NSLog(@"相同");
    }
}
@end
