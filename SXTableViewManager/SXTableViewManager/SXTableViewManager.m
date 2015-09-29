//
//  SXTableViewManager.m
//  SXTableViewManager
//
//  Created by dongshangxian on 15/9/26.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import "SXTableViewManager.h"
#import "SXCellModel.h"
#import "SXXibCell.h"
#import "UITableViewCell+Interaction.h"


@interface SXTableViewManager ()<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,strong)UITableView *tableView;
@property(nonatomic,strong)NSArray *itemArray;
@property(nonatomic,copy)NSString *cellName;

@end

@implementation SXTableViewManager

- (NSArray *)itemArray
{
    if (!_itemArray) {
        _itemArray = [NSArray array];
    }
    return _itemArray;
}

- (UITableView *)tableView
{
    if (_tableView == nil) {
        _tableView = [[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStyleGrouped];
    }
    return _tableView;
}

+ (instancetype)manager
{
    return [[self alloc]init];
}

- (UITableView *)tableViewWithItemArray:(NSArray *)array cellName:(NSString *)cellName;
{
    self.itemArray = array;
    self.cellName = cellName;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.backgroundColor = [UIColor yellowColor];
    
    return _tableView;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"%ld",self.itemArray.count);
    return self.itemArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SXCellModel *model = self.itemArray[indexPath.row];
    
    Class cellClass = nil;
    cellClass = NSClassFromString(self.cellName);
    UITableViewCell *cell = [[cellClass alloc]init];
//    cell.backgroundColor = [UIColor redColor];
    [cell setModel:model];
    
//    SXXibCell *cell = [SXXibCell cellWithTableView:tableView];
//    
//    SXCellModel *model = self.itemArray[indexPath.row];
//    
//    cell.model = model;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //    NSLog(@"行高");
    SXCellModel *model = self.itemArray[indexPath.row];
    Class cellClass = nil;
    cellClass = NSClassFromString(self.cellName);
//    UITableViewCell *cell = [[cellClass alloc]init];
    return [cellClass cellHeightWithModel:model];
    
//    return 30;
}

@end
