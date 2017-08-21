//
//  NSString+ZXEmoji.h
//  Categories
//
//  Created by zhouXian on 2017/8/18.
//  Copyright © 2017年 zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ZXEmoji)
/**
 是否包含emoji表情

 @return 是否包含emoji表情
 */
- (BOOL)zx_stringContainsEmoji;
/**
 *  @brief  删除掉包含的emoji
 *
 *  @return 清除后的string
 */

/**
 移除emoji表情

 @return 移除之后的字符串
 */
- (instancetype)zx_removedEmojiString;



/**
 字符串 - > unicode emoji
 转换规则参考  <http://www.emoji-cheat-sheet.com>

 @return 返回转换过的字符串
 */
- (NSString *)zx_stringByReplacingEmojiCheatCodesWithUnicode;


/**
 emoji - > 字符串 eg: \U0001F004 -> smiley
 转换规则参考  <http://www.emoji-cheat-sheet.com>
 @return 返回emoji的unicode
 */
- (NSString *)zx_stringByReplacingEmojiUnicodeWithCheatCodes;
@end
