//
//  UIImage+ZXStretch.m
//  ZXCategories
//
//  Created by Apple on 2017/7/25.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import "UIImage+ZXStretch.h"

@implementation UIImage (ZXStretch)
+ (UIImage *)zx_stretchImage:(NSString *)imageName
{
    return [self zx_stretchImage:imageName xPos:0.5 yPos:0.5];
}

+ (UIImage *)zx_stretchImage:(NSString *)imgName xPos:(CGFloat)xPos yPos:(CGFloat)yPos
{
    UIImage * image = [UIImage imageNamed:imgName];
    return [image stretchableImageWithLeftCapWidth:image.size.width * xPos topCapHeight:image.size.height * yPos];
}

+ (UIImage *)zx_stretchImage:(NSString *)imgName insets:(UIEdgeInsets)insets
{
    UIImage * image = [UIImage imageNamed:imgName];
    return [image resizableImageWithCapInsets:insets];
}
@end
