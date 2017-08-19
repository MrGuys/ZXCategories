//
//  UIColor+ZXHEX.h
//  Categories
//
//  Created by xiaolang on 2017/8/16.
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

+ (UIColor *)zx_colorWithHexString:(NSString *)hexString;
- (NSString *)zx_HEXString;
///值不需要除以255.0
+ (UIColor *)zx_colorWithWholeRed:(CGFloat)red
                            green:(CGFloat)green
                             blue:(CGFloat)blue
                            alpha:(CGFloat)alpha;

/**
 不需要除以255

 @param red <#red description#>
 @param green <#green description#>
 @param blue <#blue description#>
 @return <#return value description#>
 */
+ (UIColor *)zx_colorWithWholeRed:(CGFloat)red
                            green:(CGFloat)green
                             blue:(CGFloat)blue;
@end
