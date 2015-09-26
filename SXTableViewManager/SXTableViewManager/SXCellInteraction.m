//
//  SXCellInteraction.m
//  SXTableViewManager
//
//  Created by dongshangxian on 15/9/26.
//  Copyright © 2015年 Sankuai. All rights reserved.
//


#import "SXCellInteraction.h"

@implementation SXCellInteraction

+ (instancetype)interactionWithParam:(NSDictionary *)parameter action:(SXCellAction)action
{
    SXCellInteraction *instance = [[SXCellInteraction alloc]init];
    [instance setParameter:parameter];
    [instance setAction:action];
    return instance;
}

@end
