//
//  NSString+ZXSize.h
//  Categories
//
//  Created by zhouXian on 2017/8/18.
//  Copyright © 2017年 zhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSString (ZXSize)

/**
 计算文字的高度

 @param fontSize 系统字体大小
 @param width 约束宽度
 @return 计算得到的高度
 */
- (CGFloat)zx_heightWithSystemFontSize:(CGFloat )fontSize constrainedToWidth:(CGFloat)width;
/**
 计算文字的高度
 
 @param font 字体
 @param width 约束宽度
 @return 计算得到的高度
 */
- (CGFloat)zx_heightWithFont:(UIFont *)font constrainedToWidth:(CGFloat)width;
/**
 计算文字的宽度
 
 @param font 字体
 @param height 约束高度
 @return 计算得到的宽度
 */
- (CGFloat)zx_widthWithFont:(UIFont *)font constrainedToHeight:(CGFloat)height;
/**
 计算文字的大小
 
 @param font 字体
 @param width 约束宽度
 @return 计算得到的大小
 */
- (CGSize)zx_sizeWithFont:(UIFont *)font constrainedToWidth:(CGFloat)width;
/**
 计算文字的大小

 @param font 字体
 @param height 约束高度
 @return 计算得到的大小
 */
- (CGSize)zx_sizeWithFont:(UIFont *)font constrainedToHeight:(CGFloat)height;
/**
 计算文字的大小

 @param font 字体
 @param size 文字宽高限制大小
 @return 计算得到的大小
 */
- (CGSize)zx_sizeWithFont:(UIFont *)font constainedSize:(CGSize)size;
@end
