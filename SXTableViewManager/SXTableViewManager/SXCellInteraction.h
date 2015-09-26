//
//  SXCellInteraction.h
//  SXTableViewManager
//
//  Created by dongshangxian on 15/9/26.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^SXCellAction)(NSDictionary *param);

@interface SXCellInteraction : NSObject

@property (nonatomic, strong) NSDictionary *parameter;
@property (nonatomic, copy) SXCellAction action;

+ (instancetype)interactionWithParam:(NSDictionary *)parameter action:(SXCellAction)action;

@end