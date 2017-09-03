//
//  UIImage+ZXCompress.m
//  Categories
//
//  Created by zhouXian on 2017/8/17.
//  Copyright © 2017年 zhou. All rights reserved.
//

#import "UIImage+ZXCompress.h"

@implementation UIImage (ZXCompress)
+ (UIImage *)zx_resizableHalfImage:(NSString *)name
{
    UIImage *normal = [UIImage imageNamed:name];
    
    CGFloat imageW = normal.size.width * 0.5;
    CGFloat imageH = normal.size.height * 0.5;
    return [normal resizableImageWithCapInsets:UIEdgeInsetsMake(imageH, imageW, imageH, imageW)];
}


+ (NSData *)zx_compressImage:(UIImage *)image maxLength:(NSInteger)maxLength maxWidth:(NSInteger)maxWidth;
{
    NSAssert(maxLength > 0, @"图片的大小必须大于 0");
    NSAssert(maxWidth > 0, @"图片的最大边长必须大于 0");
    
    CGSize newSize = [self zx_scaleImage:image length:maxWidth];
    UIImage *newImage = [self zx_resizeImage:image newSize:newSize];
    
    CGFloat compress = 0.9f;
    NSData *data = UIImageJPEGRepresentation(newImage, compress);
    
    while (data.length > maxLength && compress > 0.01) {
        compress -= 0.02f;
        
        data = UIImageJPEGRepresentation(newImage, compress);
    }
    return data;
}
- (UIImage *)zx_imageWithNewSize:(CGSize)size{
    // 创建一个bitmap的context
    // 并把它设置成为当前正在使用的context    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0);
    //第一个参数，size，是缩放图片的尺寸，第二个参数，isOpaque 是用来决定透明通道是否被渲染。对没有透明度的图片设置这个参数为false，可能导致图片有粉红色调。第三个参数scale是显示缩放系数。当设置成0.0，主屏幕的缩放系数将被使用，对视网膜屏显示是2.0或者更高
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0);

    [self drawInRect:CGRectMake(0, 0, size.width, size.height)];
    // 从当前context中创建一个改变大小后的图片

    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    // 使当前的context出堆栈

    UIGraphicsEndImageContext();
    // 返回新的改变大小后的图片

    return newImage;
}
+ (UIImage *)zx_resizeImage:(UIImage *)image newSize:(CGSize)newSize;
{
    
    UIGraphicsBeginImageContextWithOptions(newSize, NO, 0.0);
    [image drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return newImage;
}



+ (CGSize)zx_scaleImage:(UIImage *)image length:(CGFloat)imageLength{
    
    CGFloat newWidth = 0.0f;
    CGFloat newHeight = 0.0f;
    CGFloat width = image.size.width;
    CGFloat height = image.size.height;
    
    if (width > imageLength || height > imageLength){
        
        if (width > height) {
            
            newWidth = imageLength;
            newHeight = newWidth * height / width;
            
        }else if(height > width){
            
            newHeight = imageLength;
            newWidth = newHeight * width / height;
            
        }else{
            
            newWidth = imageLength;
            newHeight = imageLength;
        }
        
    }else{
        return CGSizeMake(width, height);
    }
    
    return CGSizeMake(newWidth, newHeight);
}

@end
