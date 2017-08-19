//
//  NSString+ZXPinyin.m
//  Categories
//
//  Created by xiaolang on 2017/8/18.
//  Copyright © 2017年 zhou. All rights reserved.
//

#import "NSString+ZXPinyin.h"

@implementation NSString (ZXPinyin)
- (NSString*)zx_pinyinWithPhoneticSymbol{
    NSMutableString *pinyin = [NSMutableString stringWithString:self];
    CFStringTransform((__bridge CFMutableStringRef)(pinyin), NULL, kCFStringTransformMandarinLatin, NO);
    return pinyin;
}

- (NSString*)zx_pinyin{
    NSMutableString *pinyin = [NSMutableString stringWithString:[self zx_pinyinWithPhoneticSymbol]];
    CFStringTransform((__bridge CFMutableStringRef)(pinyin), NULL, kCFStringTransformStripCombiningMarks, NO);
    return pinyin;
}

- (NSArray*)zx_pinyinArray{
    NSArray *array = [[self zx_pinyin] componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    return array;
}

- (NSString*)zx_pinyinWithoutBlank{
    NSMutableString *string = [NSMutableString stringWithString:@""];
    for (NSString *str in [self zx_pinyinArray]) {
        [string appendString:str];
    }
    return string;
}

- (NSArray*)zx_pinyinInitialsArray{
    NSMutableArray *array = [NSMutableArray array];
    for (NSString *str in [self zx_pinyinArray]) {
        if ([str length] > 0) {
            [array addObject:[str substringToIndex:1]];
        }
    }
    return array;
}

- (NSString*)zx_pinyinInitialsString{
    NSMutableString *pinyin = [NSMutableString stringWithString:@""];
    for (NSString *str in [self zx_pinyinArray]) {
        if ([str length] > 0) {
            [pinyin appendString:[str substringToIndex:1]];
        }
    }
    return pinyin;
}
@end
