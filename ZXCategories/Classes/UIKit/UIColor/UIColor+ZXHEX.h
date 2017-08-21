//
//  UIColor+ZXHEX.h
//  Categories
//
//  Created by zhouXian on 2017/8/16.
//  Copyright © 2017年 zhou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (ZXHEX)

/**
 6位 16进制数转颜色 不带透明度

 @param hex 6位 16进制数
 @return 颜色
 */
+ (UIColor *)zx_colorWithHex:(UInt32)hex;
/**
 6位 16进制数转颜色 带透明度

 @param hex 6位 16进制数
 @param alpha 透明度
 @return 颜色
 */
+ (UIColor *)zx_colorWithHex:(UInt32)hex alpha:(CGFloat)alpha;

/**
 十六进制字符串转颜色

 @param hexString 十六进制字符串
 @return 转得的色值
 */
+ (UIColor *)zx_colorWithHexString:(NSString *)hexString;

/**
 色值转十六进制色值

 @return 十六进制色值
 */
- (NSString *)zx_HEXString;
///值不需要除以255.0
+ (UIColor *)zx_colorWithWholeRed:(CGFloat)red
                            green:(CGFloat)green
                             blue:(CGFloat)blue
                            alpha:(CGFloat)alpha;

/**
 不需要除以255

 @param red 红色色值 0 - 255
 @param green 绿色色值 0 - 255
 @param blue 蓝色色值 0 - 255
 @return 颜色
 */
+ (UIColor *)zx_colorWithWholeRed:(CGFloat)red
                            green:(CGFloat)green
                             blue:(CGFloat)blue;
@end
