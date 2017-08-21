//
//  NSArray+ZXJson.m
//  Categories
//
//  Created by zhouXian on 2017/8/18.
//  Copyright © 2017年 zhou. All rights reserved.
//

#import "NSArray+ZXJson.h"

@implementation NSArray (ZXJson)
- (NSString *)jsonString
{
    if ([NSJSONSerialization isValidJSONObject:self]) {
        NSError *error;
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:0 error:&error];
        NSString *json = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
        return json;
    }
    return nil;
}
@end
