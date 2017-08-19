//
//  UITableViewCell+ZXNib.h
//  Categories
//
//  Created by xiaolang on 2017/8/17.
//  Copyright © 2017年 zhou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableViewCell (ZXNib)
/**
 *  @brief  加载同类名的nib
 *
 *  @return nib
 */
+ (UINib *)zx_nib;
@end
