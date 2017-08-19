//
//  UIImage+ZXQRCode.m
//  ZXCategories
//
//  Created by Apple on 2017/7/25.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import "UIImage+ZXQRCode.h"
//http://www.jianshu.com/p/d2e8c5495a1a

@implementation UIImage (ZXQRCode)
#pragma ------------------------------------   Public Method    ------------------------------------


+ (UIImage *)zx_creatQRCodeImageWithString:(NSString *)string
                          withSizeWidth:(CGFloat)width
{
    NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
    return [UIImage p_QRCodeWidthData:data
                          WithWidth:width];
}

+ (UIImage *)zx_creatQRCodeImageWithUrlString:(NSString *)urlString
                             withSizeWidth:(CGFloat)width
{
    NSURL *url = [NSURL URLWithString:urlString];
    return [UIImage zx_creatQRCodeImageWithUrl:url
                              withSizeWidth:width];
}

+ (UIImage *)zx_creatQRCodeImageWithUrl:(NSURL *)url
                       withSizeWidth:(CGFloat)width
{
    NSData *data = [url dataRepresentation];
    return [UIImage p_QRCodeWidthData:data
                          WithWidth:width];
}
#pragma ------------------------------------   Private Method    ------------------------------------

+ (UIImage *)p_QRCodeWidthData:(NSData *)data
                   WithWidth:(CGFloat)width
{
    
    CIFilter *filter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    [filter setDefaults];
    [filter setValue:data forKey:@"inputMessage"];
    CIImage *outputImage = [filter outputImage];
    return [UIImage p_createNonInterpolatedUIImageFormCIImage:outputImage
                                                   withSize:width];
}

+ (UIImage *)p_createNonInterpolatedUIImageFormCIImage:(CIImage *)image
                                            withSize:(CGFloat) size
{
    
    CGRect extent = CGRectIntegral(image.extent);
    
    CGFloat scale = MIN(size/CGRectGetWidth(extent), size/CGRectGetHeight(extent));
    
    // 创建bitmap;
    
    size_t width = CGRectGetWidth(extent) * scale;
    
    size_t height = CGRectGetHeight(extent) * scale;
    
    CGColorSpaceRef cs = CGColorSpaceCreateDeviceGray();
    
    CGContextRef bitmapRef = CGBitmapContextCreate(nil, width, height, 8, 0, cs, (CGBitmapInfo)kCGImageAlphaNone);
    
    CIContext *context = [CIContext contextWithOptions:nil];
    
    CGImageRef bitmapImage = [context createCGImage:image fromRect:extent];
    
    CGContextSetInterpolationQuality(bitmapRef, kCGInterpolationNone);
    
    CGContextScaleCTM(bitmapRef, scale, scale);
    
    CGContextDrawImage(bitmapRef, extent, bitmapImage);
    
    // 保存bitmap到图片
    
    CGImageRef scaledImage = CGBitmapContextCreateImage(bitmapRef);
    
    CGContextRelease(bitmapRef);
    
    CGImageRelease(bitmapImage);
    
    return [UIImage imageWithCGImage:scaledImage];
    
}
@end
