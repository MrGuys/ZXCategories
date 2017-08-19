//
//  NSFileManager+ZXPaths.m
//  Categories
//
//  Created by xiaolang on 2017/8/18.
//  Copyright © 2017年 zhou. All rights reserved.
//

#import "NSFileManager+ZXPaths.h"
#include <sys/xattr.h>

@implementation NSFileManager (ZXPaths)
+ (NSURL *)zx_URLForDirectory:(NSSearchPathDirectory)directory
{
    return [self.defaultManager URLsForDirectory:directory inDomains:NSUserDomainMask].lastObject;
}

+ (NSString *)zx_pathForDirectory:(NSSearchPathDirectory)directory
{
    return NSSearchPathForDirectoriesInDomains(directory, NSUserDomainMask, YES)[0];
}

+ (NSURL *)zx_documentsURL
{
    return [self zx_URLForDirectory:NSDocumentDirectory];
}

+ (NSString *)zx_documentsPath
{
    return [self zx_pathForDirectory:NSDocumentDirectory];
}

+ (NSURL *)zx_libraryURL
{
    return [self zx_URLForDirectory:NSLibraryDirectory];
}

+ (NSString *)zx_libraryPath
{
    return [self zx_pathForDirectory:NSLibraryDirectory];
}

+ (NSURL *)zx_cachesURL
{
    return [self zx_URLForDirectory:NSCachesDirectory];
}

+ (NSString *)zx_cachesPath
{
    return [self zx_pathForDirectory:NSCachesDirectory];
}

+ (BOOL)zx_addSkipBackupAttributeToFile:(NSString *)path
{
    return [[NSURL.alloc initFileURLWithPath:path] setResourceValue:@(YES) forKey:NSURLIsExcludedFromBackupKey error:nil];
}

+ (double)zx_availableDiskSpace
{
    NSDictionary *attributes = [self.defaultManager attributesOfFileSystemForPath:self.zx_documentsPath error:nil];
    
    return [attributes[NSFileSystemFreeSize] unsignedLongLongValue] / (double)0x100000;
}
@end
