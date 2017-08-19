//
//  NSData+ZXEncrypt.h
//  Categories
//
//  Created by xiaolang on 2017/8/16.
//  Copyright © 2017年 zhou. All rights reserved.
//  AES DES 3DES  对称加密
//  加密解密工具 http://tool.chacuo.net/cryptdes

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonCryptor.h>

@interface NSData (ZXEncrypt)
/**
 *  利用AES加密数据
 *
 *  @param key  key 长度一般为16（AES算法所能支持的密钥长度可以为128,192,256位（也即16，24，32个字节））
 *  @param iv  iv description
 *
 *  @return data
 */
- (NSData *)zx_encryptedWithAESUsingKey:(NSString *)key andIV:(NSData *)iv;
/**
 *  @brief  利用AES解密据
 *
 *  @param key key 长度一般为16 （AES算法所能支持的密钥长度可以为128,192,256位（也即16，24，32个字节））
 *  @param iv  iv
 *
 *  @return 解密后数据
 */
- (NSData *)zx_decryptedWithAESUsingKey:(NSString *)key andIV:(NSData *)iv;
/**
 *  利用DES加密数据
 *
 *  @param key key 长度一般为8
 *  @param iv  iv description
 *
 *  @return data
 */
- (NSData *)zx_encryptedWithDESUsingKey:(NSString *)key andIV:(NSData *)iv;
/**
 *  @brief   利用DES解密数据
 *
 *  @param key key 长度一般为8
 *  @param iv  iv
 *
 *  @return 解密后数据
 */
- (NSData *)zx_decryptedWithDESUsingKey:(NSString *)key andIV:(NSData *)iv;
/**
 *  利用3DES加密数据
 *
 *  @param key key 长度一般为24
 *  @param iv  iv description
 *
 *  @return data
 */
- (NSData *)zx_encryptedWith3DESUsingKey:(NSString *)key andIV:(NSData *)iv;
/**
 *  @brief   利用3DES解密数据
 *
 *  @param key key 长度一般为24
 *  @param iv  iv
 *
 *  @return 解密后数据
 */
- (NSData *)zx_decryptedWith3DESUsingKey:(NSString *)key andIV:(NSData *)iv;


- (NSData *)zx_CCCryptData:(NSData *)data
                 algorithm:(CCAlgorithm)algorithm
                 operation:(CCOperation)operation
                       key:(NSString *)key
                        iv:(NSData *)iv;
/**
 *  @brief  NSData 转成UTF8 字符串
 *
 *  @return 转成UTF8 字符串
 */
- (NSString *)zx_UTF8String;
@end
