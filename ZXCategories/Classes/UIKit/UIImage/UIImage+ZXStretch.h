//
//  UIImage+ZXStretch.h
//  ZXCategories
//
//  Created by Apple on 2017/7/25.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ZXStretch)
/**
 *  拉伸图片，四个角不变形
 *
 *  @param imageName 图片名称
 *  @return 拉伸过的图片
 */
+ (UIImage *)zx_stretchImage:(NSString *)imageName;

/**
 *  拉伸图片，四个角不变形
 *
 *  @param imgName 图片名称
 *  @param xPos    左右不拉伸的比例 0 ~ 0.5
 *  @param yPos    上下不拉伸的比例 0 ~ 0.5
 *  @return 拉伸过的图片
 */
+ (UIImage *)zx_stretchImage:(NSString *)imgName xPos:(CGFloat)xPos yPos:(CGFloat)yPos;

/**
 *  拉伸图片，四个角不变形
 *
 *  @param imgName 图片名称
 *  @param insets  拉伸四周的高度
 *  @return 拉伸过的图片
 */
+ (UIImage *)zx_stretchImage:(NSString *)imgName insets:(UIEdgeInsets)insets;
@end
