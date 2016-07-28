//
//  FourViewController.m
//  iOSReady1
//
//  Created by 何舒展 on 16/7/27.
//  Copyright © 2016年 何舒展. All rights reserved.
//https://github.com/hongdong/HDTableViewMaker

#import "FourViewController.h"
#import "CellPushViewController.h"

@interface FourViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView * _tableView;
    NSMutableArray * _dataSource;
    NSArray *filterData;
    UISearchDisplayController *searchDisplayController;
}

@end

@implementation FourViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self ConfigUI];
    [self prepareDataSource];
    [self prepareEditButton];
}

-(void)ConfigUI
{
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0,64,self.view.bounds.size.width,self.view.bounds.size.height) style:UITableViewStylePlain];
    //收索栏
    UISearchBar * searchBar = [[UISearchBar alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 44)];
    searchBar.placeholder = @"搜索";
    
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.tableHeaderView = searchBar;
    //用searchbar初始化SearchDisplayController
    //并把searchDisplayController和当前controller关联起来
    searchDisplayController = [[UISearchDisplayController alloc] initWithSearchBar:searchBar contentsController:self];
    
    // searchResultsDataSource 就是 UITableViewDataSource
    searchDisplayController.searchResultsDataSource = self;
    // searchResultsDelegate 就是 UITableViewDelegate
    searchDisplayController.searchResultsDelegate = self;
    //在这里去注册一个tableView在显示时,需要用到的cell类.
    //通过这种方式来实现的单元格,会有相应的方法,来自动实现单元格的利用
    [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    [self.view addSubview:_tableView];
    
}
//数据
-(void)prepareDataSource
{
    _dataSource = [[NSMutableArray alloc]init];
    for (int i = 0; i<20; i++) {
        NSString * string = [NSString stringWithFormat:@"第%d条假数据",i+1];
        [_dataSource addObject:string];
    }
}

//用来准备一个编辑按钮
-(void)prepareEditButton
{
    //创建一个item
    UIBarButtonItem * editButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"Edit" style:UIBarButtonItemStylePlain target:self action:@selector(editButtonItemAction:)];
    //将item放到导航的右视图item上
    self.navigationItem.rightBarButtonItem = editButtonItem;
    NSLog(@"EDITBUTTON");
    
    
}

//编辑按钮的方法
-(void)editButtonItemAction:(UIBarButtonItem *)item
{
    //这句话,用来去执行tableView的编辑效果,但如果想真正的实现编辑,那么还需要去在后面实现相应在的操作
    NSLog(@"%d",_tableView.isEditing);
    if (_tableView.isEditing)//这个isEditing会在点击按钮的同时发生改变
    /*
     个人猜想:在uitableview类当中必然实现了一个(取反的表达式)
     */
    {
        //NSLog(@"%d",_tableView.isEditing);
        item.title = @"Edit";
        [_tableView setEditing:NO animated:YES];
    }
    else
    {
        item.title = @"Done";
        [_tableView setEditing:YES animated:YES];
    }
}
//实现编辑的操作,
-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //默认返回的效果就是删除效果
    return UITableViewCellEditingStyleDelete;
}

//提交编辑,所有编辑效果中,对应在的操作,要在这里完成
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //应在数据源中将对应效果的数据删除掉
    [_dataSource removeObjectAtIndex:indexPath.row];
    
    
    //一般在操作时,会使用对应在的刷新方法,只刷新局部数据
    [_tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationMiddle];
    
    
    //这个刷新一般用在大数量的数据变化时,对表格视图进行刷新,
    //一旦执行该刷新方法,相当重新创建了一次tableView(但不是真正的创建)
    //[_tableView reloadData];
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if ((tableView = _tableView)) {
        return _dataSource.count;
    }else
    {
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"%d",searchDisplayController.searchBar.text];
        filterData =  [[NSArray alloc] initWithArray:[_dataSource filteredArrayUsingPredicate:predicate]];
        return _dataSource.count;
    }
  
    
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //这个方法会替代之前我们写过的方法,
    //先从复用队列里取,如果取不到,那么就创建一个返回
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    
//    cell.textLabel.text = [_dataSource objectAtIndex:indexPath.row];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    if (tableView == _tableView) {
        cell.textLabel.text = _dataSource[indexPath.row];
    }else{
        cell.textLabel.text = filterData[indexPath.row];
    }
    
    return cell;
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"何舒展");
    CellPushViewController * cpvc = [[CellPushViewController alloc]init];
    [self.navigationController pushViewController:cpvc animated:YES];
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
