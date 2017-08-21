//
//  NSString+ZXEncrypt.h
//  Categories
//
//  Created by zhouXian on 2017/8/18.
//  Copyright © 2017年 zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ZXEncrypt)
/**
 *  AES加密数据
 *
 *  @param key  key 长度一般为16（AES算法所能支持的密钥长度可以为128,192,256位（也即16，24，32个字节））
 *  @param iv  iv
 *
 *  @return data
 */
- (NSString*)zx_encryptedWithAESUsingKey:(NSString*)key andIV:(NSData*)iv;
/**
 *  AES解密数据
 *
 *  @param key key 长度一般为16
 *  @param iv  iv
 *
 *  @return data
 */
- (NSString*)zx_decryptedWithAESUsingKey:(NSString*)key andIV:(NSData*)iv;

/**
 *  DES加密数据
 *
 *  @param key key 长度一般为8
 *  @param iv  iv
 *
 *  @return data
 */
- (NSString*)zx_encryptedWithDESUsingKey:(NSString*)key andIV:(NSData*)iv;
/**
 *  DE解密数据
 *
 *  @param key key 长度一般为8
 *  @param iv  iv
 *
 *  @return data
 */
- (NSString*)zx_decryptedWithDESUsingKey:(NSString*)key andIV:(NSData*)iv;

/**
 *  3DES加密数据
 *
 *  @param key key 长度一般为24
 *  @param iv  iv
 *
 *  @return data
 */
- (NSString*)zx_encryptedWith3DESUsingKey:(NSString*)key andIV:(NSData*)iv;
/**
 *  3DES解密数据
 *
 *  @param key key 长度一般为24
 *  @param iv  iv
 *
 *  @return data
 */
- (NSString*)zx_decryptedWith3DESUsingKey:(NSString*)key andIV:(NSData*)iv;
@end
