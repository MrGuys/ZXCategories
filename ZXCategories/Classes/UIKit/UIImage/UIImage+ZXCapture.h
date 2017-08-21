//
//  UIImage+ZXCapture.h
//  Categories
//
//  Created by zhouXian on 2017/8/17.
//  Copyright © 2017年 zhou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ZXCapture)

/**
 截图指定view成图片

 @param view 截图的view
 @return 截到的图片
 */
+ (UIImage *)zx_captureWithView:(UIView *)view;

/**
 截图一个view中所有视图

 @param rect 裁切范围
 @param image 需要裁切的图片
 @return 图片
 */
+ (UIImage *)zx_captureAtRect:(CGRect)rect fromImage:(UIImage *)image;

/**
 *  @brief  截图一个view中所有视图 包括旋转缩放效果
 *
 *  @param aView    指定的view
 *  @param maxWidth 宽的大小 0为view默认大小
 *
 *  @return 截图
 */
+ (UIImage *)zx_screenshotWithView:(UIView *)aView limitWidth:(CGFloat)maxWidth;
@end
