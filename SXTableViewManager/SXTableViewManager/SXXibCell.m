//
//  SXXibCell.m
//  SXTableViewManager
//
//  Created by dongshangxian on 15/9/24.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import "SXXibCell.h"
#import "SXCellModel.h"
#import "UIViewAdditions.h"

@interface SXXibCell ()
@property (weak, nonatomic) IBOutlet UIImageView *iconImg;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIButton *rightBtn;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;

@end

@implementation SXXibCell

- (void)awakeFromNib {
    // Initialization code
}

- (instancetype)init
{
//    self = [super init];
//    if (self) {
//        
//    }
    return [SXXibCell cell];
}

+ (instancetype)cell{
   return [[NSBundle mainBundle]loadNibNamed:@"SXXibCell" owner:nil options:nil][0];
}

+ (instancetype)cellWithTableView:(UITableView *)tableView{
    SXXibCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ID2"];
    if (cell == nil) {
        NSLog(@"创建了");
        cell = [[NSBundle mainBundle]loadNibNamed:@"SXXibCell" owner:nil options:nil][0];
    }
    return cell;
}

+ (CGFloat)cellHeightWithModel:(SXCellModel *)model
{
    SXXibCell *cell = [self cell];
    cell.model = model;
    [cell layoutIfNeeded];
    return cell.contentLabel.bottom + 10;
}

- (void)setModel:(SXCellModel *)model
{
    _model = model;
    _iconImg.image = [UIImage imageNamed:model.iconName];
    _titleLabel.text = model.title;
    [_rightBtn setTitle:model.btnName forState:UIControlStateNormal];
    _contentLabel.text = model.content;
    
}

@end
