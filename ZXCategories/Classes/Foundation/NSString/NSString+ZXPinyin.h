//
//  NSString+ZXPinyin.h
//  Categories
//
//  Created by zhouXian on 2017/8/18.
//  Copyright © 2017年 zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ZXPinyin)

/**
 汉语转拼音 带音标 带空格

 @return 返回带音标的拼音
 */
- (NSString *)zx_pinyinWithPhoneticSymbol;

/**
 汉语转拼音 带空格

 @return 返回不带音标的拼音
 */
- (NSString *)zx_pinyin;

/**
 汉语转拼音

 @return 返回拼音数组
 */
- (NSArray *)zx_pinyinArray;

/**
 汉语转拼音

 @return 返回的拼音各个字之间不带空格分割
 */
- (NSString *)zx_pinyinWithoutBlank;

/**
 提取汉子拼音首字母

 @return 汉子拼音首字母数组
 */
- (NSArray *)zx_pinyinInitialsArray;

/**
 提取汉子拼音首字母

 @return 汉子拼音首字母字符串
 */
- (NSString *)zx_pinyinInitialsString;
@end
