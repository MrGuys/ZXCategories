//
//  UIColor+ZXRandom.m
//  Categories
//
//  Created by xiaolang on 2017/8/17.
//  Copyright © 2017年 zhou. All rights reserved.
//

#import "UIColor+ZXRandom.h"

@implementation UIColor (ZXRandom)
+ (UIColor *)jk_randomColor {
    NSInteger aRedValue = arc4random() % 255;
    NSInteger aGreenValue = arc4random() % 255;
    NSInteger aBlueValue = arc4random() % 255;
    UIColor *randColor = [UIColor colorWithRed:aRedValue / 255.0f green:aGreenValue / 255.0f blue:aBlueValue / 255.0f alpha:1.0f];
    return randColor;
}
@end
