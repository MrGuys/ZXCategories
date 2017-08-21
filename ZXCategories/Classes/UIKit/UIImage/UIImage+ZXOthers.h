//
//  UIImage+ZXOthers.h
//  ZXCategories
//
//  Created by zhouXian on 2017/7/25.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ZXOthers)
#pragma mark ------------------抗锯齿---------------
/**
 *  缩放动画会出现锯齿 用这个方法来抗锯齿
 *  相当于layer.allowsEdgeAntialiasing = true
 *
 *  @return 返回抗锯齿的image
 */
- (UIImage *)zx_antiAlias;

@end
