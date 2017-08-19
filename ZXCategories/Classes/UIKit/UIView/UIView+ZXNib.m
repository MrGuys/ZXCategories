//
//  UIView+ZXNib.m
//  Categories
//
//  Created by xiaolang on 2017/8/16.
//  Copyright © 2017年 zhou. All rights reserved.
//

#import "UIView+ZXNib.h"

@implementation UIView (ZXNib)
+ (UINib *)zx_loadNib
{
    return [self zx_loadNibNamed:NSStringFromClass([self class])];
}
+ (UINib *)zx_loadNibNamed:(NSString*)nibName
{
    return [self zx_loadNibNamed:nibName bundle:[NSBundle mainBundle]];
}
+ (UINib *)zx_loadNibNamed:(NSString*)nibName bundle:(NSBundle *)bundle
{
    return [UINib nibWithNibName:nibName bundle:bundle];
}
+ (instancetype)zx_loadInstanceFromNib
{
    return [self zx_loadInstanceFromNibWithName:NSStringFromClass([self class])];
}
+ (instancetype)zx_loadInstanceFromNibWithName:(NSString *)nibName
{
    return [self zx_loadInstanceFromNibWithName:nibName owner:nil];
}
+ (instancetype)zx_loadInstanceFromNibWithName:(NSString *)nibName owner:(id)owner
{
    return [self zx_loadInstanceFromNibWithName:nibName owner:owner bundle:[NSBundle mainBundle]];
}
+ (instancetype)zx_loadInstanceFromNibWithName:(NSString *)nibName owner:(id)owner bundle:(NSBundle *)bundle
{
    UIView *result = nil;
    NSArray* elements = [bundle loadNibNamed:nibName owner:owner options:nil];
    for (id object in elements)
    {
        if ([object isKindOfClass:[self class]])
        {
            result = object;
            break;
        }
    }
    return result;
}

@end
