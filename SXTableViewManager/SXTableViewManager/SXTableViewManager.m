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

+ (instancetype)manager
{
    return [[self alloc]init];
}

- (UITableView *)tableViewWithItemArray:(NSArray *)array cellName:(NSString *)cellName;
{
    self.itemArray = array;
    self.cellName = cellName;
    Class cellClass = nil;
    cellClass = NSClassFromString(cellName);
    
    
    return _tableView;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.itemArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    SXXibCell *cell = [SXXibCell cellWithTableView:tableView];
    
    SXCellModel *model = self.itemArray[indexPath.row];
    
    cell.model = model;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //    NSLog(@"行高");
    SXCellModel *model = self.itemArray[indexPath.row];
    return [SXXibCell cellHeightWithModel:model];
}

@end
