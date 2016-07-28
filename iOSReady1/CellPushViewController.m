//
//  CellPushViewController.m
//  iOSReady1
//
//  Created by 何舒展 on 16/7/28.
//  Copyright © 2016年 何舒展. All rights reserved.
//

#import "CellPushViewController.h"

@interface CellPushViewController ()
{
  //创建一个用来管理雪花的数组
    NSMutableArray * _snows;
}

@end

@implementation CellPushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor brownColor];
    NSLog(@"cellpushview");
    //天上五个字，那都不是事情。
    [self Congfig];
  
}
-(void)Congfig
{
  //初始化数组
    _snows = [[NSMutableArray alloc]init];
    //通过获取屏幕的大小来初始化当前雪花类对象的大小
    self.view.frame = [[UIScreen mainScreen]bounds];
    //设置背景图片
    [self setBackgroundImage];
    //启动定时器,开始下雪
    [self startTimer];
    
}
-(void)setBackgroundImage
{
    UIImage * image = [UIImage imageNamed:@"1@2x"];
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
}
//启动定时器的方法
-(void)startTimer
{
    //使用定时器去管理雪花
    [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(managerSnows) userInfo:nil repeats:YES];
}
//这个方法,是用来去管理雪花
-(void)managerSnows
{
    [self creatSnow];
    [self fly];
    [self memoryManager];
}
//创建雪花
-(void)creatSnow
{
    int x = arc4random() % 420;
    UIView * view = [[UIView alloc]initWithFrame:CGRectMake(x, 20, 20, 20)];
    view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"未命名"]];
    //将雪花加到背景图片
    [self.view addSubview:view];
    //将雪花加到数组中,方便后面的管理
    [_snows addObject:view];
}
//让雪花飞起来
-(void)fly
{
    for (UIView * snow in _snows) {
        //获取当前雪花的中心点
        CGPoint center = snow.center;
        center.y = center.y + arc4random() % 10;
        center.x = center.x + arc4random() % 5 - 1;
        snow.center = center;
    }
}
//进行内存管理
-(void)memoryManager
{
    for (int i = 0;i<_snows.count;i++) {
        UIView * snow  = [_snows objectAtIndex:i];
        if (snow.center.y > 600) {
            //如果大于450,那么就不让他去飘了
            [_snows removeObject:snow];
            //如果要从屏幕上将雪花删除掉,那么需要从屏幕上去移除掉这个视图
            [snow removeFromSuperview];
            
            i--;
        }
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
