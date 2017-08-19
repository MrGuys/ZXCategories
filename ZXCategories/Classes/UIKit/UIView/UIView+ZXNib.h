//
//  UIView+ZXNib.h
//  Categories
//
//  Created by xiaolang on 2017/8/16.
//  Copyright © 2017年 zhou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ZXNib)
+ (UINib *)zx_loadNib;
+ (UINib *)zx_loadNibNamed:(NSString *)nibName;
+ (UINib *)zx_loadNibNamed:(NSString *)nibName bundle:(NSBundle *)bundle;

+ (instancetype)zx_loadInstanceFromNib;
+ (instancetype)zx_loadInstanceFromNibWithName:(NSString *)nibName;
+ (instancetype)zx_loadInstanceFromNibWithName:(NSString *)nibName owner:(id)owner;
+ (instancetype)zx_loadInstanceFromNibWithName:(NSString *)nibName owner:(id)owner bundle:(NSBundle *)bundle;
@end
