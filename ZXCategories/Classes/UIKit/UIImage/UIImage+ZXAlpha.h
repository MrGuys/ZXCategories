//
//  UIImage+ZXAlpha.h
//  Pods
//
//  Created by Apple on 2017/9/3.
//
//

#import <UIKit/UIKit.h>

@interface UIImage (ZXAlpha)
/**
 *  @brief  是否有alpha通道
 *
 *  @return 是否有alpha通道
 */
- (BOOL)zx_hasAlpha;
/**
 *  @brief  如果没有alpha通道 增加alpha通道
 *
 *  @return 如果没有alpha通道 增加alpha通道
 */
- (UIImage *)zx_imageWithAlpha;
/**
 *  @brief  增加透明边框
 *
 *  @param borderSize 边框尺寸
 *
 *  @return 增加透明边框后的图片
 */
- (UIImage *)zx_transparentBorderImage:(NSUInteger)borderSize;

@end
