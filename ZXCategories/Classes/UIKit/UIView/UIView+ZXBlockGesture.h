//
//  UIView+ZXBlockGesture.h
//  Categories
//
//  Created by zhouXian on 2017/8/16.
//  Copyright © 2017年 zhou. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^ZXGestureActionBlock)(UIGestureRecognizer *gestureRecoginzer);


@interface UIView (ZXBlockGesture)
/**
 *  @brief  添加tap手势
 *
 *  @param block 代码块
 */
- (void)zx_addTapActionWithBlock:(ZXGestureActionBlock)block;
/**
 *  @brief  添加长按手势
 *
 *  @param block 代码块
 */
- (void)zx_addLongPressActionWithBlock:(ZXGestureActionBlock)block;



@end
