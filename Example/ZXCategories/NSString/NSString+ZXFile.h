//
//  NSString+ZXFile.h
//  ZXCategories
//
//  Created by Apple on 2017/7/25.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ZXFile)
/**
 *  将self作为文件夹名,拼接到Doc路径下
 *
 *  @return 拼接好的完整的路径
 */
- (NSString *)filenameDocument;

/**
 *  将self作为文件夹名,拼接到Bundle路径下
 *
 *  @return 拼接好的完整的路径
 */
- (NSString *)filenameBundle;

/**
 *  判断doc下是否有 这个文件夹或者目录
 *
 *  @param
 *  @return 是否问doc下文件夹的结果
 */
- (BOOL)isDirectoryInPath:(NSString * )path;

/**
 *  判断自身文件在doc
 *
 *  @return 返回是否存在
 */
- (BOOL)fileExistsInPath:(NSString * )path;
@end
