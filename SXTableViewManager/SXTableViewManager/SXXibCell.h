//
//  SXXibCell.h
//  SXTableViewManager
//
//  Created by dongshangxian on 15/9/24.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SXCellModel;
@interface SXXibCell : UITableViewCell
@property(nonatomic,strong)SXCellModel *model;

+ (instancetype)cell;
+ (instancetype)cellWithTableView:(UITableView *)tableView;
+ (CGFloat)cellHeightWithModel:(SXCellModel *)model;

@end
