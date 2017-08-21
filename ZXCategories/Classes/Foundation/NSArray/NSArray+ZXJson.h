//
//  NSArray+ZXJson.h
//  Categories
//
//  Created by zhouXian on 2017/8/18.
//  Copyright © 2017年 zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (ZXJson)

/**
 数组转json字符串

 @return 转化后的字符串
 */
- (NSString *)jsonString;
@end
