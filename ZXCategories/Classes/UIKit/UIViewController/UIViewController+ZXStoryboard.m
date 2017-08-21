//
//  UIViewController+ZXStoryboard.m
//  Pods
//
//  Created by zhouXian on 2017/8/21.
//
//

#import "UIViewController+ZXStoryboard.h"

@implementation UIViewController (ZXStoryboard)

+ (instancetype)loadFromClassNameIdentifierWithStoryboardName:(NSString *)name{
    return [self loadFromStoryboradName:name identifier:NSStringFromClass([self class])];
}
+ (instancetype)loadFromStoryboradName:(NSString *)name identifier:(NSString *)identifeir{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:name bundle:nil];
    return [storyboard instantiateViewControllerWithIdentifier:identifeir];
}
@end
