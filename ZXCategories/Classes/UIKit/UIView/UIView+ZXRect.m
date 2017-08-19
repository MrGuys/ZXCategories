//
//  UIView+ZXRect.h
//  Pods
//
//  Created by Apple on 2017/7/21.
//
//

#import "UIView+ZXRect.h"

@implementation UIView (ZXRect)
- (void)setZx_x:(CGFloat)zx_x{
    CGRect frame = self.frame;
    frame.origin.x = zx_x;
    self.frame = frame;
}
- (CGFloat)zx_x{
    return self.frame.origin.x;
}

- (void)setZx_y:(CGFloat)zx_y{
    CGRect frame = self.frame;
    frame.origin.y = zx_y;
    self.frame = frame;
}
- (CGFloat)zx_y{
    return self.frame.origin.y;
}

- (void)setZx_width:(CGFloat)zx_width{
    CGRect frame = self.frame;
    frame.size.width = zx_width;
    self.frame = frame;
}
- (CGFloat)zx_width{
    return self.frame.size.width;
}

- (void)setZx_height:(CGFloat)zx_height{
    CGRect frame = self.frame;
    frame.size.height = zx_height;
    self.frame = frame;
}
- (CGFloat)zx_height{
    return self.frame.size.height;
}

- (void)setZx_origin:(CGPoint)zx_origin{
    CGRect frame = self.frame;
    frame.origin = zx_origin;
    self.frame = frame;
}
- (CGPoint)zx_origin{
    return self.frame.origin;
}

-(void)setZx_size:(CGSize)zx_size{
    CGRect frame = self.frame;
    frame.size = zx_size;
    self.frame = frame;
}
-(CGSize)zx_size{
    return self.frame.size;
}

- (void)setZx_centerX:(CGFloat)zx_centerX{
    CGPoint center = self.center;
    center.x = zx_centerX;
    self.center = center;
}
- (CGFloat)zx_centerX{
    return self.center.x;
}

- (void)setZx_centerY:(CGFloat)zx_centerY{
    CGPoint center = self.center;
    center.y = zx_centerY;
    self.center = center;
}
- (CGFloat)zx_centerY{
    return self.center.y;
}

- (void)setZx_bottom:(CGFloat)zx_bottom{
    self.zx_y = zx_bottom - self.zx_height;
}
- (CGFloat)zx_bottom
{
    return  self.zx_y + self.zx_height;
}

- (void)setZx_right:(CGFloat)zx_right{
    self.zx_x = zx_right - self.zx_width;
    
}
- (CGFloat)zx_right
{
    return  self.zx_x + self.zx_width;
}




@end
