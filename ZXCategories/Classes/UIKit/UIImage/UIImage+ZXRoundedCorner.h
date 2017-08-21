//
//  UIImage+ZXRoundedCorner.h
//  Categories
//
//  Created by zhouXian on 2017/8/17.
//  Copyright © 2017年 zhou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ZXRoundedCorner)

/**
 高效圆角

 @param cornerSize 圆角大小
 @param borderWidth 四周留边大小
 @return 返回拿到的image
 */
- (UIImage *)zx_roundedCornerImage:(NSInteger)cornerSize borderWidth:(NSInteger)borderWidth;

/**
 高效圆角

 @param radius 圆角大小
 @return 返回处理过的图片
 */
- (UIImage *)zx_imageWithCornerRadius:(CGFloat)radius;
@end
