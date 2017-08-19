//
//  NSString+ZXEncrypt.m
//  Categories
//
//  Created by xiaolang on 2017/8/18.
//  Copyright © 2017年 zhou. All rights reserved.
//

#import "NSString+ZXEncrypt.h"
#import "NSData+ZXEncrypt.h"
#import "NSData+ZXBase64.h"
@implementation NSString (ZXEncrypt)
-(NSString*)zx_encryptedWithAESUsingKey:(NSString*)key andIV:(NSData*)iv {
    NSData *encrypted = [[self dataUsingEncoding:NSUTF8StringEncoding] zx_encryptedWithAESUsingKey:key andIV:iv];
    NSString *encryptedString = [encrypted zx_base64EncodedString];
    
    return encryptedString;
}

- (NSString*)zx_decryptedWithAESUsingKey:(NSString*)key andIV:(NSData*)iv {
    NSData *decrypted = [[NSData zx_dataWithBase64EncodedString:self] zx_decryptedWithAESUsingKey:key andIV:iv];
    NSString *decryptedString = [[NSString alloc] initWithData:decrypted encoding:NSUTF8StringEncoding];
    
    return decryptedString;
}

- (NSString*)zx_encryptedWithDESUsingKey:(NSString*)key andIV:(NSData*)iv {
    NSData *encrypted = [[self dataUsingEncoding:NSUTF8StringEncoding] zx_encryptedWithDESUsingKey:key andIV:iv];
    NSString *encryptedString = [encrypted zx_base64EncodedString];
    
    return encryptedString;
}

- (NSString*)zx_decryptedWithDESUsingKey:(NSString*)key andIV:(NSData*)iv {
    NSData *decrypted = [[NSData zx_dataWithBase64EncodedString:self] zx_decryptedWithDESUsingKey:key andIV:iv];
    NSString *decryptedString = [[NSString alloc] initWithData:decrypted encoding:NSUTF8StringEncoding];
    
    return decryptedString;
}

- (NSString*)zx_encryptedWith3DESUsingKey:(NSString*)key andIV:(NSData*)iv {
    NSData *encrypted = [[self dataUsingEncoding:NSUTF8StringEncoding] zx_encryptedWith3DESUsingKey:key andIV:iv];
    NSString *encryptedString = [encrypted zx_base64EncodedString];
    
    return encryptedString;
}

- (NSString*)zx_decryptedWith3DESUsingKey:(NSString*)key andIV:(NSData*)iv {
    NSData *decrypted = [[NSData zx_dataWithBase64EncodedString:self] zx_decryptedWith3DESUsingKey:key andIV:iv];
    NSString *decryptedString = [[NSString alloc] initWithData:decrypted encoding:NSUTF8StringEncoding];
    
    return decryptedString;
}

@end
