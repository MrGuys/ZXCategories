//
//  NSDate+ZXExtension.h
//  Categories
//
//  Created by xiaolang on 2017/8/18.
//  Copyright © 2017年 zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (ZXExtension)
/**
 * 获取日、月、年、小时、分钟、秒
 */
- (NSUInteger)zx_day;
- (NSUInteger)zx_month;
- (NSUInteger)zx_year;
- (NSUInteger)zx_hour;
- (NSUInteger)zx_minute;
- (NSUInteger)zx_second;
+ (NSUInteger)zx_day:(NSDate *)date;
+ (NSUInteger)zx_month:(NSDate *)date;
+ (NSUInteger)zx_year:(NSDate *)date;
+ (NSUInteger)zx_hour:(NSDate *)date;
+ (NSUInteger)zx_minute:(NSDate *)date;
+ (NSUInteger)zx_second:(NSDate *)date;

/**
 * 获取一年中的总天数
 */
- (NSUInteger)zx_daysInYear;
+ (NSUInteger)zx_daysInYear:(NSDate *)date;

/**
 * 判断是否是润年
 * @return YES表示润年，NO表示平年
 */
- (BOOL)zx_isLeapYear;
+ (BOOL)zx_isLeapYear:(NSDate *)date;

/**
 * 获取该日期是该年的第几周
 */
- (NSUInteger)zx_weekOfYear;
+ (NSUInteger)zx_weekOfYear:(NSDate *)date;

/**
 * 获取格式化为YYYY-MM-dd格式的日期字符串
 */
- (NSString *)zx_formatYMD;
+ (NSString *)zx_formatYMD:(NSDate *)date;

/**
 * 返回当前月一共有几周(可能为4,5,6)
 */
- (NSUInteger)zx_weeksOfMonth;
+ (NSUInteger)zx_weeksOfMonth:(NSDate *)date;

/**
 * 获取该月的第一天的日期
 */
- (NSDate *)zx_begindayOfMonth;
+ (NSDate *)zx_begindayOfMonth:(NSDate *)date;

/**
 * 获取该月的最后一天的日期
 */
- (NSDate *)zx_lastdayOfMonth;
+ (NSDate *)zx_lastdayOfMonth:(NSDate *)date;

/**
 * 返回day天后的日期(若day为负数,则为|day|天前的日期)
 */
- (NSDate *)zx_dateAfterDay:(NSUInteger)day;
+ (NSDate *)zx_dateAfterDate:(NSDate *)date day:(NSInteger)day;

/**
 * 返回day天后的日期(若day为负数,则为|day|天前的日期)
 */
- (NSDate *)zx_dateAfterMonth:(NSUInteger)month;
+ (NSDate *)zx_dateAfterDate:(NSDate *)date month:(NSInteger)month;

/**
 * 返回numYears年后的日期
 */
- (NSDate *)zx_offsetYears:(int)numYears;
+ (NSDate *)zx_offsetYears:(int)numYears fromDate:(NSDate *)fromDate;

/**
 * 返回numMonths月后的日期
 */
- (NSDate *)zx_offsetMonths:(int)numMonths;
+ (NSDate *)zx_offsetMonths:(int)numMonths fromDate:(NSDate *)fromDate;

/**
 * 返回numDays天后的日期
 */
- (NSDate *)zx_offsetDays:(int)numDays;
+ (NSDate *)zx_offsetDays:(int)numDays fromDate:(NSDate *)fromDate;

/**
 * 返回numHours小时后的日期
 */
- (NSDate *)zx_offsetHours:(int)hours;
+ (NSDate *)zx_offsetHours:(int)numHours fromDate:(NSDate *)fromDate;

/**
 * 距离该日期前几天
 */
- (NSUInteger)zx_daysAgo;
+ (NSUInteger)zx_daysAgo:(NSDate *)date;

/**
 *  获取星期几
 *
 *  @return Return weekday number
 *  [1 - Sunday]
 *  [2 - Monday]
 *  [3 - Tuerday]
 *  [4 - Wednesday]
 *  [5 - Thursday]
 *  [6 - Friday]
 *  [7 - Saturday]
 */
- (NSInteger)zx_weekday;
+ (NSInteger)zx_weekday:(NSDate *)date;

/**
 *  获取星期几(名称)
 *
 *  @return Return weekday as a localized string
 *  [1 - Sunday]
 *  [2 - Monday]
 *  [3 - Tuerday]
 *  [4 - Wednesday]
 *  [5 - Thursday]
 *  [6 - Friday]
 *  [7 - Saturday]
 */
- (NSString *)zx_dayFromWeekday;
+ (NSString *)zx_dayFromWeekday:(NSDate *)date;

/**
 *  日期是否相等
 *
 *  @param anotherDate The another date to compare as NSDate
 *  @return Return YES if is same day, NO if not
 */
- (BOOL)zx_isSameDay:(NSDate *)anotherDate;

/**
 *  是否是今天
 *
 *  @return Return if self is today
 */
- (BOOL)zx_isToday;

/**
 *  Add days to self
 *
 *  @param days The number of days to add
 *  @return Return self by adding the gived days number
 */
- (NSDate *)zx_dateByAddingDays:(NSUInteger)days;

/**
 *  Get the month as a localized string from the given month number
 *
 *  @param month The month to be converted in string
 *  [1 - January]
 *  [2 - February]
 *  [3 - March]
 *  [4 - April]
 *  [5 - May]
 *  [6 - June]
 *  [7 - July]
 *  [8 - August]
 *  [9 - September]
 *  [10 - October]
 *  [11 - November]
 *  [12 - December]
 *
 *  @return Return the given month as a localized string
 */
+ (NSString *)zx_monthWithMonthNumber:(NSInteger)month;





/**po
 * 获取指定月份的天数
 */
- (NSUInteger)zx_daysInMonth:(NSUInteger)month;
+ (NSUInteger)zx_daysInMonth:(NSDate *)date month:(NSUInteger)month;

/**
 * 获取当前月份的天数
 */
- (NSUInteger)zx_daysInMonth;
+ (NSUInteger)zx_daysInMonth:(NSDate *)date;

/**
 * 返回x分钟前/x小时前/昨天/x天前/x个月前/x年前
 */
- (NSString *)zx_timeInfo;
+ (NSString *)zx_timeInfoWithDate:(NSDate *)date;
+ (NSString *)zx_timeInfoWithDateString:(NSString *)dateString;

/**
 * 分别获取yyyy-MM-dd/HH:mm:ss/yyyy-MM-dd HH:mm:ss格式的字符串
 */
- (NSString *)zx_ymdFormat;
- (NSString *)zx_hmsFormat;
- (NSString *)zx_ymdHmsFormat;
+ (NSString *)zx_ymdFormat;
+ (NSString *)zx_hmsFormat;
+ (NSString *)zx_ymdHmsFormat;
@end
