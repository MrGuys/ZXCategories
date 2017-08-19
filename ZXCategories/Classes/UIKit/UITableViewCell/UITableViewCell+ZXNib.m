//
//  UITableViewCell+ZXNib.m
//  Categories
//
//  Created by xiaolang on 2017/8/17.
//  Copyright © 2017年 zhou. All rights reserved.
//

#import "UITableViewCell+ZXNib.h"

@implementation UITableViewCell (ZXNib)
/**
 *  @brief  加载同类名的nib
 *
 *  @return nib
 */
+ (UINib *)zx_nib{
    return  [UINib nibWithNibName:NSStringFromClass([self class]) bundle:nil];
}
@end
