//
//  UIImage+ZXTransform.h
//  ZXCategories
//
//  Created by Apple on 2017/7/25.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSUInteger ,scalingBy) {
    scalingByMini,
    scalingByMax,
};
@interface UIImage (ZXTransform)
/**
 *  按比例图片缩放
 *
 *  @param targetSize 目标图片大小
 *  @param scalingBy 根据大的边，还是小的边来缩放
 *  @return 缩放的图片
 */
- (UIImage * )zx_imageByScalingProportionallyToSize:(CGSize)targetSize by:(scalingBy)scalingBy;

/**
 *  指定大小缩放图片
 *
 *  @param targetSize 目标图片大小
 *  @return 缩放的图片
 */
- (UIImage *)zx_imageByScalingToSize:(CGSize)targetSize;

/**
 *  通过M_PI旋转图片
 *
 *  @param radians 旋转的角度,旋转角度为顺时针方向
 *  @return 旋转过后的图片
 */
- (UIImage *)zx_imageRotatedByRadians:(CGFloat)radians;

/**
 *  通过角度旋转图片
 *
 *  @param degrees 旋转的角度,旋转角度为顺时针方向
 *  @return 旋转过后的图片
 */
- (UIImage *)zx_imageRotatedByDegrees:(CGFloat)degrees;

@end
