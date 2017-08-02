//
//  NSString+ZXFile.m
//  ZXCategories
//
//  Created by Apple on 2017/7/25.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import "NSString+ZXFile.h"

@implementation NSString (ZXFile)
- (NSString *)filenameDocument
{
    return [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0] stringByAppendingPathComponent:self];
}

- (NSString *)filenameBundle{
    return [[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent:self];
}

- (BOOL)isDirectoryInPath:(NSString * )path
{
    BOOL b;
    NSFileManager *fileManager = [NSFileManager defaultManager];
    //直接返回是判断是否存在, b是判断是否是文件夹
    [fileManager fileExistsAtPath:path isDirectory:&b];
    
    return b;
}

- (BOOL)fileExistsInPath:(NSString * )path
{
    NSFileManager * fileManager = [NSFileManager defaultManager];
    return [fileManager fileExistsAtPath:path];
}



@end
