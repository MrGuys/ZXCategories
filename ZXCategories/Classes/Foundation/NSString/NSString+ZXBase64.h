//
//  NSString+ZXBase64.h
//  Categories
//
//  Created by xiaolang on 2017/8/18.
//  Copyright © 2017年 zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ZXBase64)
+ (NSString *)zx_stringWithBase64EncodedString:(NSString *)string;
- (NSString *)zx_base64EncodedStringWithWrapWidth:(NSUInteger)wrapWidth;
- (NSString *)zx_base64EncodedString;
- (NSString *)zx_base64DecodedString;
- (NSData *)zx_base64DecodedData;
@end
