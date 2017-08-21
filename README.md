# ZXCategories

[![CI Status](http://img.shields.io/travis/Apple/ZXCategories.svg?style=flat)](https://travis-ci.org/Apple/ZXCategories)
[![Version](https://img.shields.io/cocoapods/v/ZXCategories.svg?style=flat)](http://cocoapods.org/pods/ZXCategories)
[![License](https://img.shields.io/cocoapods/l/ZXCategories.svg?style=flat)](http://cocoapods.org/pods/ZXCategories)
[![Platform](https://img.shields.io/cocoapods/p/ZXCategories.svg?style=flat)](http://cocoapods.org/pods/ZXCategories)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

ZXCategories is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "ZXCategories"
```

## Usage

### Foundation

* NSArray
    * NSArray+ZXJson 数组转换json字符串 传给后台经常用
* NSData
    * NSData+ZXBase64 base64相关
    * NSData+ZXEncrypt AES DES 3DES  对称加密 
    * NSData+ZXGzip 压缩 解压
    * NSData+ZXHash hash md5 不可逆
* NSDate
    * NSDate+ZXDateFormatter 格式转换相关
    * NSDate+ZXExtension 年月日常用操作
* NSFileManager
    * NSFileManager+ZXPaths 常用doc lib cache路径返回
* NSString
    * NSString+ZXBase64 base64转换
    * NSString+ZXEmoji emoji表情相关 是否包含 移除 转换成字符串 字符串转换回表情（服务器若不支持emoji时用到）
    * NSString+ZXEncode url需要转成utf-8时使用
    * NSString+ZXEncrypt AES DES 3DES  对称加密
    * NSString+ZXHash hash md5 
    * NSString+ZXPinyin 汉子转拼音相关
    * NSString+ZXSize 计算字符串占用大小相关
    * NSString+ZXValid 验证手机号 邮箱 身份证等

 ### UIKit

* UIColor
    * UIColor+ZXHEX.h 十六进制转颜色相关
    * UIColor+ZXRandom 随机一个颜色
* UIImage
    * UIImage+ZXCapture 截图相关
    * UIImage+ZXColor 颜色转Image
    * UIImage+ZXCompress 图片压缩
    * UIImage+ZXFileName 提供路径加载图片 不缓存图片
    * UIImage+ZXOthers 缩放动画抗锯齿
    * UIImage+ZXQRCode 二维码相关
    * UIImage+ZXRoundedCorner 高性能圆角图片
    * UIImage+ZXStretch 图片拉伸相关
    * UIImage+ZXTransform 缩放 旋转
* UINavigationController
    * UINavigationController+ZXStackManager pop回指定层次控制器等
* UITableViewCell层次
    * UITableViewCell+ZXNib 获取cell的nib
* UIView
    * UIView+ZXBlockGesture 快速添加手势block
    * UIView+ZXLayout frame快捷封装 比如view.x
    * UIView+ZXNib 从nib加载相关
* UIViewController
    * UIViewController+ZXBackButtonTouched 使用block替换返回按钮的事件
    * UIViewController+ZXStoryboard 从storyboard加载控制器
## Author

Apple, 376552890@qq.com

## License

ZXCategories is available under the MIT license. See the LICENSE file for more info.
