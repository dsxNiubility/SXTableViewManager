//
//  UITableViewCell+Interaction.h
//  SXTableViewManager
//
//  Created by dongshangxian on 15/9/26.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "SXCellInteraction.h"

@interface UITableViewCell (Interaction)

@property (nonatomic, strong) SXCellInteraction *interaction;
@property (nonatomic, strong) id model;

- (void)addCellInteraction:(NSDictionary *)parameter;

@end
