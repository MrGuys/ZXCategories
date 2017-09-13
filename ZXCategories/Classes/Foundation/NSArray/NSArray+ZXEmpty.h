//
//  NSArray+ZXEmpty.h
//  Pods
//
//  Created by Apple on 2017/9/13.
//
//

#import <Foundation/Foundation.h>

@interface NSArray (ZXEmpty)

/**
 nil或者没有元素都会返回NO

 @return 判空结果
 */
- (BOOL)zx_isEmpty;
@end
