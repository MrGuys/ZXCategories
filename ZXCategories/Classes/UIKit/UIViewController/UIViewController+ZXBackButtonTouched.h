//
//  UIViewController+ZXBackButtonTouched.h
//  Categories
//
//  Created by zhouXian on 2017/8/16.
//  Copyright © 2017年 zhou. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^ZXBackButtonHandler)(UIViewController *vc);

@interface UIViewController (ZXBackButtonTouched)

/**
 返回按钮回调

 @param backButtonHandler backButtonHandler
 */
-(void)zx_backButtonTouched:(ZXBackButtonHandler)backButtonHandler;
@end
