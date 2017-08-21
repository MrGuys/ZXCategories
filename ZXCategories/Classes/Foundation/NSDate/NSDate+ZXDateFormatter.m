//
//  NSDate+ZXDateFormatter.m
//  Categories
//
//  Created by zhouXian on 2017/8/18.
//  Copyright © 2017年 zhou. All rights reserved.
//

#import "NSDate+ZXDateFormatter.h"

@implementation NSDate (ZXDateFormatter)
+ (NSString *)zx_stringWithDate:(NSDate *)date format:(NSString *)format {
    return [date zx_stringWithFormat:format];
}

- (NSString *)zx_stringWithFormat:(NSString *)format {
    NSDateFormatter *outputFormatter = [[NSDateFormatter alloc] init];
    [outputFormatter setDateFormat:format];
    
    NSString *retStr = [outputFormatter stringFromDate:self];
    
    return retStr;
}

+ (NSDate *)zx_dateWithString:(NSString *)string format:(NSString *)format {
    NSDateFormatter *inputFormatter = [[NSDateFormatter alloc] init];
    [inputFormatter setDateFormat:format];
    NSDate *date = [inputFormatter dateFromString:string];
    return date;
}

+ (NSString *)zx_stringWithString:(NSString *)string fromFormatter:(NSString *)fromFormatter toFormatter:(NSString *)toFormatter{
    NSDate *date = [self zx_dateWithString:string format:fromFormatter];
    return [date zx_stringWithFormat:toFormatter];
}


+ (NSString *)zx_timeStampWithString:(NSString *)string format:(NSString *)format {
    NSDateFormatter *inputFormatter = [[NSDateFormatter alloc] init];
    [inputFormatter setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"en_US"]];
    [inputFormatter setDateFormat:format];
    NSDate* inputDate = [inputFormatter dateFromString:string];
    
    NSTimeInterval interval = [inputDate timeIntervalSince1970] * 1000;
    NSString *timeStamp = [NSString stringWithFormat:@"%.0f",interval];
    return timeStamp;
}

+ (NSString *)zx_stringWithformat:(NSString *)format timeMillis:(NSInteger)timeMillis {
    
    return [NSDate p_formatDate:format WithTimeStamp:(timeMillis / 1000)];
}
+ (NSString *)p_formatDate:(NSString *)formatString WithTimeStamp:(NSInteger)timeStamp{
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeStamp];
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    [fmt setDateFormat:formatString];
    NSString *formatStr=[fmt stringFromDate:date];
    return formatStr;
}
@end
