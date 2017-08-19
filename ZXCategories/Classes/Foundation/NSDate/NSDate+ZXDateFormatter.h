//
//  NSDate+ZXDateFormatter.h
//  Categories
//
//  Created by xiaolang on 2017/8/18.
//  Copyright © 2017年 zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (ZXDateFormatter)

/**
 根据日期格式返回字符串

 @param format 日期格式
 @return 对应的字符串
 */
- (NSString *)zx_stringWithFormat:(NSString *)format;

/**
 根据日期字符串与日期返回date

 @param string 日期字符串
 @param format 日期格式
 @return date
 */
+ (NSDate *)zx_dateWithString:(NSString *)string
                       format:(NSString *)format;


/**
 修改日期字符串的格式

 @param fromFormatter 原始日期格式
 @param toFormatter 目标日期格式
 @return 修改后的日期字符串
 */
+ (NSString *)zx_stringWithString:(NSString *)string
                    fromFormatter:(NSString *)fromFormatter
                      toFormatter:(NSString *)toFormatter;
/**
 时间字符串转时间戳
 
 @param string 日期字符串
 @param format 日期格式
 @return 时间戳 13位
 */
+ (NSString *)zx_timeStampWithString:(NSString *)string
                              format:(NSString *)format;

/**
 将时间毫秒数 格式化为 formatString(例如:yyyy-MM-dd HH:mm:ss)类型格式
 
 @param format 字符串格式
 @param timeMillis 毫秒 13位
 @return 转化后的时间字符串
 */
+ (NSString *)zx_stringWithformat:(NSString *)format
                       timeMillis:(NSInteger)timeMillis;
@end
