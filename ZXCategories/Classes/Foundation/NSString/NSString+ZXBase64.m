//
//  NSString+ZXBase64.m
//  Categories
//
//  Created by xiaolang on 2017/8/18.
//  Copyright © 2017年 zhou. All rights reserved.
//

#import "NSString+ZXBase64.h"
#import "NSData+ZXBase64.h"
@implementation NSString (ZXBase64)
+ (NSString *)zx_stringWithBase64EncodedString:(NSString *)string
{
    NSData *data = [NSData zx_dataWithBase64EncodedString:string];
    if (data)
    {
        return [[self alloc] initWithData:data encoding:NSUTF8StringEncoding];
    }
    return nil;
}
- (NSString *)zx_base64EncodedStringWithWrapWidth:(NSUInteger)wrapWidth
{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
    return [data zx_base64EncodedStringWithWrapWidth:wrapWidth];
}
- (NSString *)zx_base64EncodedString
{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
    return [data zx_base64EncodedString];
}
- (NSString *)zx_base64DecodedString
{
    return [NSString zx_stringWithBase64EncodedString:self];
}
- (NSData *)zx_base64DecodedData
{
    return [NSData zx_dataWithBase64EncodedString:self];
}
@end
