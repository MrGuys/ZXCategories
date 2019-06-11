//
//  NSArray+ZXEmpty.m
//  Pods
//
//  Created by Apple on 2017/9/13.
//
//

#import "NSArray+ZXEmpty.h"

@implementation NSArray (ZXEmpty)
- (BOOL)zx_isEmpty{
    return (self == nil) || ([self count] == 0) ? YES : NO;
}
@end
