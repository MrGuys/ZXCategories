//
//  UIViewController+ZXStoryboard.h
//  Pods
//
//  Created by zhouXian on 2017/8/21.
//
//

#import <UIKit/UIKit.h>

@interface UIViewController (ZXStoryboard)

/**
 从提供的storyboard名加载类名作为identifier的storyboard，storyboard名不需要加.storyboard扩展名

 @param name storyboard名
 @return 从storyboard加载的实例
 */
+ (instancetype)zx_loadFromClassNameIdentifierWithStoryboardName:(NSString *)name;

/**
 从提供的storyboard名加载类名作为identifier的storyboard，storyboard名不需要加.storyboard扩展名

 @param name storyboard名
 @param identifeir storyboard里面设置的storyboard ID
 @return 从storyboard加载的实例
 */
+ (instancetype)zx_loadFromStoryboradName:(NSString *)name identifier:(NSString *)identifeir;

@end
