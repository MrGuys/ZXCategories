//
//  UIViewController+ZXStoryboard.m
//  Pods
//
//  Created by zhouXian on 2017/8/21.
//
//

#import "UIViewController+ZXStoryboard.h"

@implementation UIViewController (ZXStoryboard)

+ (instancetype)zx_loadFromClassNameIdentifierWithStoryboardName:(NSString *)name{
    return [self zx_loadFromStoryboradName:name identifier:NSStringFromClass([self class])];
}
+ (instancetype)zx_loadFromStoryboradName:(NSString *)name identifier:(NSString *)identifeir{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:name bundle:nil];
    return [storyboard instantiateViewControllerWithIdentifier:identifeir];
}
@end
