//
//  UIImage+ZXFileName.h
//  Categories
//
//  Created by zhouXian on 2017/8/17.
//  Copyright © 2017年 zhou. All rights reserved.
//  

#import <UIKit/UIKit.h>

@interface UIImage (ZXFileName)

/**
 根据main bundle中的文件名读取图片

 @param name 图片名
 @return 无缓存的图片
 */
+ (UIImage *)zx_imageWithFileName:(NSString *)name;

/**
 根据指定bundle中的文件名读取图片

 @param name 图片名
 @param bundle bundle
 @return 无缓存的图片
 */
+ (UIImage *)zx_imageWithFileName:(NSString *)name inBundle:(NSBundle*)bundle;
@end
