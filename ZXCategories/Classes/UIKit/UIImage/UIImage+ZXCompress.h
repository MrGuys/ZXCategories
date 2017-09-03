//
//  UIImage+ZXCompress.h
//  Categories
//
//  Created by zhouXian on 2017/8/17.
//  Copyright © 2017年 zhou. All rights reserved.
// 采用UIKit框架里的UIGraphicsBeginImageContextWithOptions实现

#import <UIKit/UIKit.h>

@interface UIImage (ZXCompress)
/**
 压缩上传图片到指定字节

 @param image 压缩的图片
 @param maxLength 压缩后最大字节大小
 @param maxWidth 图片最大边长
 @return 压缩后图片的二进制
 */
+ (NSData *)zx_compressImage:(UIImage *)image maxLength:(NSInteger)maxLength maxWidth:(NSInteger)maxWidth;

/**
 *  获得指定size的图片
 *
 *  @param image   原始图片
 *  @param newSize 指定的size
 *
 *  @return 调整后的图片
 */
+ (UIImage *)zx_resizeImage:(UIImage *)image newSize:(CGSize)newSize;

/**
 获得指定size的图片

 @param size  原始图片
 @return 指定的size
 */
- (UIImage *)zx_imageWithNewSize:(CGSize)size;
/**
 *  通过指定图片最长边，获得等比例的图片size
 *
 *  @param image       原始图片
 *  @param imageLength 图片允许的最长宽度（高度）
 *
 *  @return 获得等比例的size
 */
+ (CGSize)zx_scaleImage:(UIImage *)image length:(CGFloat)imageLength;
/**
 图片分辨率缩一半

 @param name 图片名
 @return 缩小后的图片
 */
+ (UIImage *)zx_resizableHalfImage:(NSString *)name;
@end
