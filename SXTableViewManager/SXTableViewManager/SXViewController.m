//
//  ViewController.m
//  SXTableViewManager
//
//  Created by dongshangxian on 15/9/24.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import "SXViewController.h"
#import "SXCellModel.h"
#import "SXXibCell.h"

@interface SXViewController ()<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,strong)UITableView *tableView;
@property(nonatomic,strong)NSArray *modelArray;

@end

@implementation SXViewController

- (UITableView *)tableView
{
    if (_tableView == nil) {
        _tableView = [[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStyleGrouped];
    }
    return _tableView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tableView];
    _tableView.delegate = self;
    _tableView.dataSource = self;
//    [self.tableView registerClass:[SXXibCell class] forCellReuseIdentifier:@"ID"];
//    [_tableView registerNib:[UINib nibWithNibName:@"SXXibCell" bundle:nil] forCellReuseIdentifier:@"ID"];
    
    SXCellModel *m1 = [[SXCellModel alloc]init];
    m1.title = @"科比";
    m1.content = @"s的哈哈是考虑到好";
    m1.iconName = @"1";
    m1.btnName = @"回复";
    
    SXCellModel *m2 = [[SXCellModel alloc]init];
    m2.title = @"科比";
    m2.content = @"s的哈哈是考虑到好看啦收到货时卡桑德拉设定了";
    m2.iconName = @"3";
    m2.btnName = @"回复";
    
    SXCellModel *m3 = [[SXCellModel alloc]init];
    m3.title = @"科比";
    m3.content = @"s的哈哈是考虑到好看啦收到货时卡桑德拉设定了s的哈哈是考虑到好看啦收到货时卡桑德拉设定了s的哈哈是考虑到好看啦收到货时卡桑德拉设定了s的哈哈是考虑到好看啦收到货时卡桑德拉设定了s的哈哈是考虑到好看啦收到货时卡桑德拉设定了";
    m3.iconName = @"4";
    m3.btnName = @"回复";
    
    SXCellModel *m4 = [[SXCellModel alloc]init];
    m4.title = @"科比";
    m4.content = @"s的哈哈是考虑到好看啦收到货时卡桑德拉设定了";
    m4.iconName = @"6";
    m4.btnName = @"回复";
    
    SXCellModel *m0 = [[SXCellModel alloc]init];
    m0.title = @"科比";
    m0.content = @"s的哈哈是考虑到好看啦收到货时卡桑德拉设定了s的哈哈是考虑到好看啦收到货时卡桑德拉设定了s的哈哈是考虑到好看啦收到货时卡桑德拉设定了s的哈哈是考虑到好看啦收到货时卡桑德拉设定了s的哈哈是考虑到好看啦收到货时卡桑德拉设定了s的哈哈是考虑到好看啦收到货时卡桑德拉设定了s的哈哈是考虑到好看啦收到货时卡桑德拉设定了s的哈哈是考虑到好看啦收到货时卡桑德拉设定了s的哈哈是考虑到好看啦收到货时卡桑德拉设定了s的哈哈是考虑到好看啦收到货时卡桑德拉设定了";
    m0.iconName = @"8";
    m0.btnName = @"回复";
    
    self.modelArray = @[m0,m1,m2,m3,m4,m1,m2,m3,m4,m1,m2,m3,m4,m0,m1,m2,m3,m4,m1,m2,m3,m4,m1,m2,m3,m4];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.modelArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SXXibCell *cell = [SXXibCell cellWithTableView:tableView];
    
    SXCellModel *model = self.modelArray[indexPath.row];
    
    cell.model = model;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    NSLog(@"行高");
    SXCellModel *model = self.modelArray[indexPath.row];
    return [SXXibCell cellHeightWithModel:model];
}


@end
