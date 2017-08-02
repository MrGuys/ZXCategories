//
//  UIView+ZXExtension.h
//  Pods
//
//  Created by Apple on 2017/7/21.
//
//

#import <UIKit/UIKit.h>

@interface UIView (ZXExtension)
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;

@property (nonatomic, assign) CGPoint origin;
@property (nonatomic, assign) CGSize  size;

@property(nonatomic, assign) CGFloat centerX;
@property(nonatomic, assign) CGFloat centerY;

@property (assign, nonatomic) CGFloat top;
@property (assign, nonatomic) CGFloat left;
@property (assign, nonatomic) CGFloat bottom;
@property (assign, nonatomic) CGFloat right;
@end
