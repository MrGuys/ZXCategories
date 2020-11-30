//
//  UIButton+ZXInterval.h
//  Pods-ZXCategories_Example
//
//  Created by TB-Mac-150 on 2020/11/30.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (ZXInterval)
/// 点击事件响应的时间间隔，不设置或者大于 0 时为默认时间间隔
@property (nonatomic, assign) NSTimeInterval zx_clickInterval;
/// 是否忽略响应的时间间隔
@property (nonatomic, assign) BOOL zx_ignoreClickInterval;
+ (void)zx_exchangeClickMethod;

@end

NS_ASSUME_NONNULL_END
