//
//  UIImage+ZXQRCode.h
//  ZXCategories
//
//  Created by zhouXian on 2017/7/25.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ZXQRCode)
/**
 *  字符串输出二维码图片
 *
 *  @param string 字符串
 *  @param width 指定输出宽度
 *  @return 转换出的图片
 */
+ (UIImage *)zx_creatQRCodeImageWithString:(NSString *)string
                             withSizeWidth:(CGFloat)width;
/**
 *  url字符串输出二维码图片
 *
 *  @param urlString 字符串
 *  @param width 指定输出宽度
 *  @return 转换出的图片
 */
+ (UIImage *)zx_creatQRCodeImageWithUrlString:(NSString *)urlString
                                withSizeWidth:(CGFloat)width;
/**
 *  url输出二维码图片
 *
 *  @param url url
 *  @param width 指定输出宽度
 *  @return 转换出的图片
 */
+ (UIImage *)zx_creatQRCodeImageWithUrl:(NSURL *)url
                          withSizeWidth:(CGFloat)width;
@end
