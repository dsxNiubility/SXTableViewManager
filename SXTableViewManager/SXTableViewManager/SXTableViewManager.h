//
//  SXTableViewManager.h
//  SXTableViewManager
//
//  Created by dongshangxian on 15/9/26.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SXTableViewManager : NSObject

+ (instancetype)manager;
- (UITableView *)tableViewWithItemArray:(NSArray *)array cellName:(NSString *)cellName;
@end
