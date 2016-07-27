//
//  SZTableViewCell.h
//  iOSReady1
//
//  Created by 何舒展 on 16/7/27.
//  Copyright © 2016年 何舒展. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SZTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *SZlabel;
@property(nonatomic,strong)NSString * title;
@end
