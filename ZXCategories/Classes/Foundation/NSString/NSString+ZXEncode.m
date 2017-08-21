//
//  NSString+ZXEncode.m
//  Categories
//
//  Created by zhouXian on 2017/8/18.
//  Copyright © 2017年 zhou. All rights reserved.
//

#import "NSString+ZXEncode.h"

@implementation NSString (ZXEncode)
- (NSString *)zx_urlEncode
{
    if (self.length == 0) return @"";
    
    return [self stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
}

- (NSString *)zx_urlDecode
{
    if (self.length == 0) return @"";
    
    return self.stringByRemovingPercentEncoding;
}
@end
