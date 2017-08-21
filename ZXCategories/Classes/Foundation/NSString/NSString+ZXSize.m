//
//  NSString+ZXSize.m
//  Categories
//
//  Created by zhouXian on 2017/8/18.
//  Copyright © 2017年 zhou. All rights reserved.
//

#import "NSString+ZXSize.h"

@implementation NSString (ZXSize)
/**
 计算文字的高度
 
 @param fontSize 系统字体大小
 @param width 约束宽度
 @return 计算得到的高度
 */
- (CGFloat)zx_heightWithSystemFontSize:(CGFloat )fontSize constrainedToWidth:(CGFloat)width{
    return [self zx_sizeWithFont:[UIFont systemFontOfSize:fontSize] constainedSize:CGSizeMake(width, CGFLOAT_MAX)].height;
}
/**
 计算文字的高度
 
 @param font 字体
 @param height 约束宽度
 @return 计算得到的高度
 */
- (CGFloat)zx_heightWithFont:(UIFont *)font constrainedToWidth:(CGFloat)width
{
    return [self zx_sizeWithFont:font constainedSize:CGSizeMake(width, CGFLOAT_MAX)].height;
}
/**
 计算文字的宽度
 
 @param font 字体
 @param height 约束高度
 @return 计算得到的宽度
 */
- (CGFloat)zx_widthWithFont:(UIFont *)font constrainedToHeight:(CGFloat)height
{
    return [self zx_sizeWithFont:font constainedSize:CGSizeMake(CGFLOAT_MAX, height)].width;
}
/**
 计算文字的大小
 
 @param font 字体
 @param height 约束宽度
 @return 计算得到的大小
 */
- (CGSize)zx_sizeWithFont:(UIFont *)font constrainedToWidth:(CGFloat)width
{
    return [self zx_sizeWithFont:font constainedSize:CGSizeMake(width, CGFLOAT_MAX)];
}
/**
 计算文字的大小
 
 @param font 字体
 @param height 约束高度
 @return 计算得到的大小
 */
- (CGSize)zx_sizeWithFont:(UIFont *)font constrainedToHeight:(CGFloat)height
{
    return [self zx_sizeWithFont:font constainedSize:CGSizeMake(CGFLOAT_MAX, height)];
}
/**
 计算文字的大小
 
 @param font 字体
 @param size 文字宽高限制大小
 @return 计算得到的大小
 */
- (CGSize)zx_sizeWithFont:(UIFont *)font constainedSize:(CGSize)size{
    NSDictionary *dic = @{NSFontAttributeName : font};
    CGSize textSize = [self boundingRectWithSize:size
                                         options:(NSStringDrawingUsesLineFragmentOrigin |
                                                  NSStringDrawingTruncatesLastVisibleLine)
                                      attributes:dic context:nil].size;
    return textSize;
}

@end
