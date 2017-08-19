//
//  NSString+ZXEncode.h
//  Categories
//
//  Created by xiaolang on 2017/8/18.
//  Copyright © 2017年 zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ZXEncode)

/**
 转utf-8

 @return 转化后的字符串
 */
- (NSString *)zx_urlEncode;


/**
 utf-8转回来

 @return 转化后的字符串
 */
- (NSString *)urlDecode;
@end
