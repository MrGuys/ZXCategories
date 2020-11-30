//
//  UIButton+ZXInterval.m
//  Pods-ZXCategories_Example
//
//  Created by TB-Mac-150 on 2020/11/30.
//

#import "UIButton+ZXInterval.h"
#import <objc/runtime.h>
static double kDefaultInterval = 0.1;


@implementation UIButton (ZXInterval)
//+ (void)initialize {
//
//}
//+ (void)load {
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        //  获得方法选择器
//        SEL originalSel = @selector(sendAction:to:forEvent:);
//        SEL newSel = @selector(zx_sendClickIntervalAction:to:forEvent:);
//        //获得方法
//        Method originalMethod = class_getInstanceMethod(self , originalSel);
//        Method newMethod = class_getInstanceMethod(self , newSel);
//
//        //   如果发现方法已经存在，返回NO；也可以用来做检查用,这里是为了避免源方法没有存在的情况;如果方法没有存在,我们则先尝试添加被替换的方法的实现
//        BOOL isAddNewMethod = class_addMethod(self, originalSel, method_getImplementation(newMethod), "v@:");
//        if (isAddNewMethod) {
//            class_replaceMethod(self, newSel, method_getImplementation(originalMethod), "v@:");
//        } else {
//            method_exchangeImplementations(originalMethod, newMethod);
//        }
//    });
//}


+ (void)zx_exchangeClickMethod {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        //  获得方法选择器
        SEL originalSel = @selector(sendAction:to:forEvent:);
        SEL newSel = @selector(zx_sendClickIntervalAction:to:forEvent:);
        //获得方法
        Method originalMethod = class_getInstanceMethod(self , originalSel);
        Method newMethod = class_getInstanceMethod(self , newSel);
        
        //   如果发现方法已经存在，返回NO；也可以用来做检查用,这里是为了避免源方法没有存在的情况;如果方法没有存在,我们则先尝试添加被替换的方法的实现
        BOOL isAddNewMethod = class_addMethod(self, originalSel, method_getImplementation(newMethod), "v@:");
        if (isAddNewMethod) {
            class_replaceMethod(self, newSel, method_getImplementation(originalMethod), "v@:");
        } else {
            method_exchangeImplementations(originalMethod, newMethod);
        }
    });
}


- (void)zx_sendClickIntervalAction:(SEL)action to:(id)target forEvent:(UIEvent *)event {
    if ([self isKindOfClass:[UIButton class]] && !self.zx_ignoreClickInterval) {
        if (self.zx_clickInterval <= 0) {
            self.zx_clickInterval = kDefaultInterval;
        };
        
        NSString *currentSELName = NSStringFromSelector(action);
        if (self.isIgnoreClick && [self.oldSELName isEqualToString:currentSELName]) {
            return;
        }
        
        if (self.zx_clickInterval > 0) {
            self.isIgnoreClick = YES;
            self.oldSELName = currentSELName;
            [self performSelector:@selector(kk_ignoreClickState:)
                       withObject:@(NO)
                       afterDelay:self.zx_clickInterval];
        }
    }
    [self zx_sendClickIntervalAction:action to:target forEvent:event];
}

- (void)kk_ignoreClickState:(NSNumber *)ignoreClickState {
    self.isIgnoreClick = ignoreClickState.boolValue;
    self.oldSELName = @"";
}
- (NSTimeInterval)zx_clickInterval {
    return [objc_getAssociatedObject(self, _cmd) doubleValue];
}

- (void)setZx_clickInterval:(NSTimeInterval)zx_clickInterval {
    objc_setAssociatedObject(self, @selector(zx_clickInterval), @(zx_clickInterval), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (BOOL)isIgnoreClick {
    return [objc_getAssociatedObject(self, _cmd) boolValue];
}

- (void)setIsIgnoreClick:(BOOL)isIgnoreClick {
    objc_setAssociatedObject(self, @selector(isIgnoreClick), @(isIgnoreClick), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (BOOL)zx_ignoreClickInterval {
    return [objc_getAssociatedObject(self, _cmd) boolValue];
}
- (void)setZx_ignoreClickInterval:(BOOL)zx_ignoreClickInterval {
    objc_setAssociatedObject(self, @selector(zx_ignoreClickInterval), @(zx_ignoreClickInterval), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)oldSELName {
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setOldSELName:(NSString *)oldSELName {
    objc_setAssociatedObject(self, @selector(oldSELName), oldSELName, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
