//
//  UITableViewCell+Interaction.m
//  SXTableViewManager
//
//  Created by dongshangxian on 15/9/26.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import "UITableViewCell+Interaction.h"

#import <objc/runtime.h>

static const void *interaction = &interaction;

@implementation UITableViewCell (Interaction)

#pragma mark - Public method

- (void)addCellInteraction:(NSDictionary *)parameter
{
    @synchronized(self) {
        if (self.interaction.action) {
            self.interaction.action(parameter);
        }
    }
}

#pragma mark - Associated Object

- (SXCellInteraction *)interaction
{
    return objc_getAssociatedObject(self, interaction);
}

- (void)setInteraction:(SXCellInteraction *)aInteraction
{
    objc_setAssociatedObject(self, interaction, aInteraction, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end