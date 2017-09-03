//
//  UIImage+ZXResize.h
//  Pods
//
//  Created by zhouXian on 2017/9/3.
// 采用Quartz 2D API
//

#import <UIKit/UIKit.h>

@interface UIImage (ZXResize)

/**
 返回指定区域的裁剪图片

 @param bounds 指定裁剪区域 bounds将会使用CGRectIntegral来校正。这意味着所有的小数部分会被转换成整数。
 @return 裁剪过后的图片
 */
- (UIImage *)zx_croppedImage:(CGRect)bounds;

/**
 返回指定大小的缩略图

 @param thumbnailSize 指定大小，超出方形区域将会被裁剪
 @param borderSize 四周透明留边大小。如果为0，不添加，如果有数值，用于解决旋转动画的锯齿bug
 @param cornerRadius 圆角大小
 @param quality 指定了缩放图片时候产生的抗锯齿量。
 @return 缩略图
 */
- (UIImage *)zx_thumbnailImage:(NSInteger)thumbnailSize
             transparentBorder:(NSUInteger)borderSize
                  cornerRadius:(NSUInteger)cornerRadius
          interpolationQuality:(CGInterpolationQuality)quality;

/**
 返回一个改变大小后的图片 这个方法，与其他在这描述的用户改变大小的方法，都考虑到UIImage的方向并相应地转换像素。图片的朝向结果将会向上(UIImageOrientationUp)，而无视当前朝向的值

 @param newSize 给定缩略图大小
 @param quality 给定了缩放图片时候产生的抗锯齿量。
 @return 缩放后的图片
 */
- (UIImage *)zx_resizedImage:(CGSize)newSize
        interpolationQuality:(CGInterpolationQuality)quality;

/**
 支持Aspect Fit 和Aspect Fill两种模式的缩放

 @param contentMode 模式
 @param bounds  支持Aspect Fit 和Aspect Fill两种模式
 @param quality 指定了缩放图片时候产生的抗锯齿量。
 @return 缩放后的图片
 */
- (UIImage *)zx_resizedImageWithContentMode:(UIViewContentMode)contentMode
                                     bounds:(CGSize)bounds
                       interpolationQuality:(CGInterpolationQuality)quality;
@end
