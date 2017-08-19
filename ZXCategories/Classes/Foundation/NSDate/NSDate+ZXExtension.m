//
//  NSDate+ZXExtension.m
//  Categories
//
//  Created by xiaolang on 2017/8/18.
//  Copyright © 2017年 zhou. All rights reserved.
//

#import "NSDate+ZXExtension.h"
#import "NSDate+ZXDateFormatter.h"
@implementation NSDate (ZXExtension)
- (NSUInteger)zx_day {
    return [NSDate zx_day:self];
}

- (NSUInteger)zx_month {
    return [NSDate zx_month:self];
}

- (NSUInteger)zx_year {
    return [NSDate zx_year:self];
}

- (NSUInteger)zx_hour {
    return [NSDate zx_hour:self];
}

- (NSUInteger)zx_minute {
    return [NSDate zx_minute:self];
}

- (NSUInteger)zx_second {
    return [NSDate zx_second:self];
}

+ (NSUInteger)zx_day:(NSDate *)date {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
#if __IPHONE_OS_VERSION_MIN_REQUIRED >= __IPHONE_8_0
    // NSDayCalendarUnit
    NSDateComponents *dayComponents = [calendar components:(NSCalendarUnitDay) fromDate:date];
#else
    NSDateComponents *dayComponents = [calendar components:(NSDayCalendarUnit) fromDate:date];
#endif
    
    return [dayComponents day];
}

+ (NSUInteger)zx_month:(NSDate *)date {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
#if __IPHONE_OS_VERSION_MIN_REQUIRED >= __IPHONE_8_0
    // NSDayCalendarUnit
    NSDateComponents *dayComponents = [calendar components:(NSCalendarUnitMonth) fromDate:date];
#else
    NSDateComponents *dayComponents = [calendar components:(NSMonthCalendarUnit) fromDate:date];
#endif
    
    return [dayComponents month];
}

+ (NSUInteger)zx_year:(NSDate *)date {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
#if __IPHONE_OS_VERSION_MIN_REQUIRED >= __IPHONE_8_0
    // NSDayCalendarUnit
    NSDateComponents *dayComponents = [calendar components:(NSCalendarUnitYear) fromDate:date];
#else
    NSDateComponents *dayComponents = [calendar components:(NSYearCalendarUnit) fromDate:date];
#endif
    
    return [dayComponents year];
}

+ (NSUInteger)zx_hour:(NSDate *)date {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
#if __IPHONE_OS_VERSION_MIN_REQUIRED >= __IPHONE_8_0
    // NSDayCalendarUnit
    NSDateComponents *dayComponents = [calendar components:(NSCalendarUnitHour) fromDate:date];
#else
    NSDateComponents *dayComponents = [calendar components:(NSHourCalendarUnit) fromDate:date];
#endif
    
    return [dayComponents hour];
}

+ (NSUInteger)zx_minute:(NSDate *)date {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
#if __IPHONE_OS_VERSION_MIN_REQUIRED >= __IPHONE_8_0
    // NSDayCalendarUnit
    NSDateComponents *dayComponents = [calendar components:(NSCalendarUnitMinute) fromDate:date];
#else
    NSDateComponents *dayComponents = [calendar components:(NSMinuteCalendarUnit) fromDate:date];
#endif
    
    return [dayComponents minute];
}

+ (NSUInteger)zx_second:(NSDate *)date {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
#if __IPHONE_OS_VERSION_MIN_REQUIRED >= __IPHONE_8_0
    // NSDayCalendarUnit
    NSDateComponents *dayComponents = [calendar components:(NSCalendarUnitSecond) fromDate:date];
#else
    NSDateComponents *dayComponents = [calendar components:(NSSecondCalendarUnit) fromDate:date];
#endif
    
    return [dayComponents second];
}

- (NSUInteger)zx_daysInYear {
    return [NSDate zx_daysInYear:self];
}

+ (NSUInteger)zx_daysInYear:(NSDate *)date {
    return [self zx_isLeapYear:date] ? 366 : 365;
}

- (BOOL)zx_isLeapYear {
    return [NSDate zx_isLeapYear:self];
}

+ (BOOL)zx_isLeapYear:(NSDate *)date {
    NSUInteger year = [date zx_year];
    if ((year % 4  == 0 && year % 100 != 0) || year % 400 == 0) {
        return YES;
    }
    return NO;
}

- (NSString *)zx_formatYMD {
    return [NSDate zx_formatYMD:self];
}

+ (NSString *)zx_formatYMD:(NSDate *)date {
    return [NSString stringWithFormat:@"%lu-%02lu-%02lu",[date zx_year],[date zx_month], [date zx_day]];
}

- (NSUInteger)zx_weeksOfMonth {
    return [NSDate zx_weeksOfMonth:self];
}

+ (NSUInteger)zx_weeksOfMonth:(NSDate *)date {
    return [[date zx_lastdayOfMonth] zx_weekOfYear] - [[date zx_begindayOfMonth] zx_weekOfYear] + 1;
}

- (NSUInteger)zx_weekOfYear {
    return [NSDate zx_weekOfYear:self];
}

+ (NSUInteger)zx_weekOfYear:(NSDate *)date {
    NSUInteger i;
    NSUInteger year = [date zx_year];
    
    NSDate *lastdate = [date zx_lastdayOfMonth];
    
    for (i = 1;[[lastdate zx_dateAfterDay:-7 * i] zx_year] == year; i++) {
        
    }
    
    return i;
}

- (NSDate *)zx_dateAfterDay:(NSUInteger)day {
    return [NSDate zx_dateAfterDate:self day:day];
}

+ (NSDate *)zx_dateAfterDate:(NSDate *)date day:(NSInteger)day {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *componentsToAdd = [[NSDateComponents alloc] init];
    [componentsToAdd setDay:day];
    
    NSDate *dateAfterDay = [calendar dateByAddingComponents:componentsToAdd toDate:date options:0];
    
    return dateAfterDay;
}

- (NSDate *)zx_dateAfterMonth:(NSUInteger)month {
    return [NSDate zx_dateAfterDate:self month:month];
}

+ (NSDate *)zx_dateAfterDate:(NSDate *)date month:(NSInteger)month {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *componentsToAdd = [[NSDateComponents alloc] init];
    [componentsToAdd setMonth:month];
    NSDate *dateAfterMonth = [calendar dateByAddingComponents:componentsToAdd toDate:date options:0];
    
    return dateAfterMonth;
}

- (NSDate *)zx_begindayOfMonth {
    return [NSDate zx_begindayOfMonth:self];
}

+ (NSDate *)zx_begindayOfMonth:(NSDate *)date {
    return [self zx_dateAfterDate:date day:-[date zx_day] + 1];
}

- (NSDate *)zx_lastdayOfMonth {
    return [NSDate zx_lastdayOfMonth:self];
}

+ (NSDate *)zx_lastdayOfMonth:(NSDate *)date {
    NSDate *lastDate = [self zx_begindayOfMonth:date];
    return [[lastDate zx_dateAfterMonth:1] zx_dateAfterDay:-1];
}

- (NSUInteger)zx_daysAgo {
    return [NSDate zx_daysAgo:self];
}

+ (NSUInteger)zx_daysAgo:(NSDate *)date {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
#if __IPHONE_OS_VERSION_MIN_REQUIRED >= __IPHONE_8_0
    NSDateComponents *components = [calendar components:(NSCalendarUnitDay)
                                               fromDate:date
                                                 toDate:[NSDate date]
                                                options:0];
#else
    NSDateComponents *components = [calendar components:(NSDayCalendarUnit)
                                               fromDate:date
                                                 toDate:[NSDate date]
                                                options:0];
#endif
    
    return [components day];
}

- (NSInteger)zx_weekday {
    return [NSDate zx_weekday:self];
}

+ (NSInteger)zx_weekday:(NSDate *)date {
    NSCalendar *gregorian = [[NSCalendar alloc]
                             initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *comps = [gregorian components:(NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear | NSCalendarUnitWeekday) fromDate:date];
    NSInteger weekday = [comps weekday];
    
    return weekday;
}

- (NSString *)zx_dayFromWeekday {
    return [NSDate zx_dayFromWeekday:self];
}

+ (NSString *)zx_dayFromWeekday:(NSDate *)date {
    switch([date zx_weekday]) {
        case 1:
            return @"星期天";
            break;
        case 2:
            return @"星期一";
            break;
        case 3:
            return @"星期二";
            break;
        case 4:
            return @"星期三";
            break;
        case 5:
            return @"星期四";
            break;
        case 6:
            return @"星期五";
            break;
        case 7:
            return @"星期六";
            break;
        default:
            break;
    }
    return @"";
}

- (BOOL)zx_isSameDay:(NSDate *)anotherDate {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components1 = [calendar components:(NSCalendarUnitYear
                                                          | NSCalendarUnitMonth
                                                          | NSCalendarUnitDay)
                                                fromDate:self];
    NSDateComponents *components2 = [calendar components:(NSCalendarUnitYear
                                                          | NSCalendarUnitMonth
                                                          | NSCalendarUnitDay)
                                                fromDate:anotherDate];
    return ([components1 year] == [components2 year]
            && [components1 month] == [components2 month]
            && [components1 day] == [components2 day]);
}

- (BOOL)zx_isToday {
    return [self zx_isSameDay:[NSDate date]];
}

- (NSDate *)zx_dateByAddingDays:(NSUInteger)days {
    NSDateComponents *c = [[NSDateComponents alloc] init];
    c.day = days;
    return [[NSCalendar currentCalendar] dateByAddingComponents:c toDate:self options:0];
}

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
+ (NSString *)zx_monthWithMonthNumber:(NSInteger)month {
    switch(month) {
        case 1:
            return @"January";
            break;
        case 2:
            return @"February";
            break;
        case 3:
            return @"March";
            break;
        case 4:
            return @"April";
            break;
        case 5:
            return @"May";
            break;
        case 6:
            return @"June";
            break;
        case 7:
            return @"July";
            break;
        case 8:
            return @"August";
            break;
        case 9:
            return @"September";
            break;
        case 10:
            return @"October";
            break;
        case 11:
            return @"November";
            break;
        case 12:
            return @"December";
            break;
        default:
            break;
    }
    return @"";
}






- (NSUInteger)zx_daysInMonth:(NSUInteger)month {
    return [NSDate zx_daysInMonth:self month:month];
}

+ (NSUInteger)zx_daysInMonth:(NSDate *)date month:(NSUInteger)month {
    switch (month) {
        case 1: case 3: case 5: case 7: case 8: case 10: case 12:
            return 31;
        case 2:
            return [date zx_isLeapYear] ? 29 : 28;
    }
    return 30;
}

- (NSUInteger)zx_daysInMonth {
    return [NSDate zx_daysInMonth:self];
}

+ (NSUInteger)zx_daysInMonth:(NSDate *)date {
    return [self zx_daysInMonth:date month:[date zx_month]];
}

- (NSString *)zx_timeInfo {
    return [NSDate zx_timeInfoWithDate:self];
}

+ (NSString *)zx_timeInfoWithDate:(NSDate *)date {
    return [self zx_timeInfoWithDateString:[date zx_stringWithFormat:[self zx_ymdHmsFormat]]];
}

+ (NSString *)zx_timeInfoWithDateString:(NSString *)dateString {
    NSDate *date = [self zx_dateWithString:dateString format:[self zx_ymdHmsFormat]];
    
    NSDate *curDate = [NSDate date];
    NSTimeInterval time = -[date timeIntervalSinceDate:curDate];
    
    int month = (int)([curDate zx_month] - [date zx_month]);
    int year = (int)([curDate zx_year] - [date zx_year]);
    int day = (int)([curDate zx_day] - [date zx_day]);
    
    NSTimeInterval retTime = 1.0;
    if (time < 3600) { // 小于一小时
        retTime = time / 60;
        retTime = retTime <= 0.0 ? 1.0 : retTime;
        return [NSString stringWithFormat:@"%.0f分钟前", retTime];
    } else if (time < 3600 * 24) { // 小于一天，也就是今天
        retTime = time / 3600;
        retTime = retTime <= 0.0 ? 1.0 : retTime;
        return [NSString stringWithFormat:@"%.0f小时前", retTime];
    } else if (time < 3600 * 24 * 2) {
        return @"昨天";
    }
    // 第一个条件是同年，且相隔时间在一个月内
    // 第二个条件是隔年，对于隔年，只能是去年12月与今年1月这种情况
    else if ((abs(year) == 0 && abs(month) <= 1)
             || (abs(year) == 1 && [curDate zx_month] == 1 && [date zx_month] == 12)) {
        int retDay = 0;
        if (year == 0) { // 同年
            if (month == 0) { // 同月
                retDay = day;
            }
        }
        
        if (retDay <= 0) {
            // 获取发布日期中，该月有多少天
            int totalDays = (int)[self zx_daysInMonth:date month:[date zx_month]];
            
            // 当前天数 + （发布日期月中的总天数-发布日期月中发布日，即等于距离今天的天数）
            retDay = (int)[curDate zx_day] + (totalDays - (int)[date zx_day]);
        }
        
        return [NSString stringWithFormat:@"%d天前", (abs)(retDay)];
    } else  {
        if (abs(year) <= 1) {
            if (year == 0) { // 同年
                return [NSString stringWithFormat:@"%d个月前", abs(month)];
            }
            
            // 隔年
            int month = (int)[curDate zx_month];
            int preMonth = (int)[date zx_month];
            if (month == 12 && preMonth == 12) {// 隔年，但同月，就作为满一年来计算
                return @"1年前";
            }
            return [NSString stringWithFormat:@"%d个月前", (abs)(12 - preMonth + month)];
        }
        
        return [NSString stringWithFormat:@"%d年前", abs(year)];
    }
    
    return @"1小时前";
}

- (NSString *)zx_ymdFormat {
    return [NSDate zx_ymdFormat];
}

- (NSString *)zx_hmsFormat {
    return [NSDate zx_hmsFormat];
}

- (NSString *)zx_ymdHmsFormat {
    return [NSDate zx_ymdHmsFormat];
}

+ (NSString *)zx_ymdFormat {
    return @"yyyy-MM-dd";
}

+ (NSString *)zx_hmsFormat {
    return @"HH:mm:ss";
}

+ (NSString *)zx_ymdHmsFormat {
    return [NSString stringWithFormat:@"%@ %@", [self zx_ymdFormat], [self zx_hmsFormat]];
}

- (NSDate *)zx_offsetYears:(int)numYears {
    return [NSDate zx_offsetYears:numYears fromDate:self];
}

+ (NSDate *)zx_offsetYears:(int)numYears fromDate:(NSDate *)fromDate {
    if (fromDate == nil) {
        return nil;
    }
    
#if __IPHONE_OS_VERSION_MIN_REQUIRED >= __IPHONE_8_0
    // NSDayCalendarUnit
    NSCalendar *gregorian = [[NSCalendar alloc]
                             initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
#else
    NSCalendar *gregorian = [[NSCalendar alloc]
                             initWithCalendarIdentifier:NSGregorianCalendar];
#endif
    
    
    NSDateComponents *offsetComponents = [[NSDateComponents alloc] init];
    [offsetComponents setYear:numYears];
    
    return [gregorian dateByAddingComponents:offsetComponents
                                      toDate:fromDate
                                     options:0];
}

- (NSDate *)zx_offsetMonths:(int)numMonths {
    return [NSDate zx_offsetMonths:numMonths fromDate:self];
}

+ (NSDate *)zx_offsetMonths:(int)numMonths fromDate:(NSDate *)fromDate {
    if (fromDate == nil) {
        return nil;
    }
    
#if __IPHONE_OS_VERSION_MIN_REQUIRED >= __IPHONE_8_0
    // NSDayCalendarUnit
    NSCalendar *gregorian = [[NSCalendar alloc]
                             initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
#else
    NSCalendar *gregorian = [[NSCalendar alloc]
                             initWithCalendarIdentifier:NSGregorianCalendar];
#endif
    
    
    NSDateComponents *offsetComponents = [[NSDateComponents alloc] init];
    [offsetComponents setMonth:numMonths];
    
    return [gregorian dateByAddingComponents:offsetComponents
                                      toDate:fromDate
                                     options:0];
}

- (NSDate *)zx_offsetDays:(int)numDays {
    return [NSDate zx_offsetDays:numDays fromDate:self];
}

+ (NSDate *)zx_offsetDays:(int)numDays fromDate:(NSDate *)fromDate {
    if (fromDate == nil) {
        return nil;
    }
    
#if __IPHONE_OS_VERSION_MIN_REQUIRED >= __IPHONE_8_0
    // NSDayCalendarUnit
    NSCalendar *gregorian = [[NSCalendar alloc]
                             initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
#else
    NSCalendar *gregorian = [[NSCalendar alloc]
                             initWithCalendarIdentifier:NSGregorianCalendar];
#endif
    
    
    NSDateComponents *offsetComponents = [[NSDateComponents alloc] init];
    [offsetComponents setDay:numDays];
    
    return [gregorian dateByAddingComponents:offsetComponents
                                      toDate:fromDate
                                     options:0];
}

- (NSDate *)zx_offsetHours:(int)hours {
    return [NSDate zx_offsetHours:hours fromDate:self];
}

+ (NSDate *)zx_offsetHours:(int)numHours fromDate:(NSDate *)fromDate {
    if (fromDate == nil) {
        return nil;
    }
    
#if __IPHONE_OS_VERSION_MIN_REQUIRED >= __IPHONE_8_0
    // NSDayCalendarUnit
    NSCalendar *gregorian = [[NSCalendar alloc]
                             initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
#else
    NSCalendar *gregorian = [[NSCalendar alloc]
                             initWithCalendarIdentifier:NSGregorianCalendar];
#endif
    
    
    NSDateComponents *offsetComponents = [[NSDateComponents alloc] init];
    [offsetComponents setHour:numHours];
    
    return [gregorian dateByAddingComponents:offsetComponents
                                      toDate:fromDate
                                     options:0];
}
@end
