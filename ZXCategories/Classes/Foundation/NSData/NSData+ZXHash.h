//
//  NSData+ZXHash.h
//  Categories
//
//  Created by xiaolang on 2017/8/16.
//  Copyright © 2017年 zhou. All rights reserved.
//  md5 sha 不可解密

#import <Foundation/Foundation.h>

@interface NSData (ZXHash)
/**
 *  @brief  md5 NSData
 */
@property (readonly) NSData *zx_md5Data;
/**
 *  @brief  sha1Data NSData
 */
@property (readonly) NSData *zx_sha1Data;
/**
 *  @brief  sha256Data NSData
 */
@property (readonly) NSData *zx_sha256Data;
/**
 *  @brief  sha512Data NSData
 */
@property (readonly) NSData *zx_sha512Data;

/**
 *  @brief  md5 NSData
 *
 *  @param key 密钥
 *
 *  @return 结果
 */
- (NSData *)zx_hmacMD5DataWithKey:(NSData *)key;
/**
 *  @brief  sha1Data NSData
 *
 *  @param key 密钥
 *
 *  @return 结果
 */
- (NSData *)zx_hmacSHA1DataWithKey:(NSData *)key;
/**
 *  @brief  sha256Data NSData
 *
 *  @param key 密钥
 *
 *  @return 结果
 */
- (NSData *)zx_hmacSHA256DataWithKey:(NSData *)key;
/**
 *  @brief  sha512Data NSData
 *
 *  @param key 密钥
 *
 *  @return 结果
 */
- (NSData *)zx_hmacSHA512DataWithKey:(NSData *)key;

@end
