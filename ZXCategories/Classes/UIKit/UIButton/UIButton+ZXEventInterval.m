//
//  UIButton+ZXEventInterval.m
//  Pods-ZXCategories_Example
//
//  Created by TB-Mac-150 on 2019/6/11.
//

#import "UIButton+ZXEventInterval.h"
#import <objc/runtime.h>

static char * const zx_eventIntervalKey = "zx_eventIntervalKey";
static char * const eventUnavailableKey = "eventUnavailableKey";

@interface UIButton ()

@property (nonatomic, assign) BOOL eventUnavailable;

@end

@implementation UIButton (ZXEventInterval)
+ (void)load {
    
    Method method = class_getInstanceMethod(self, @selector(sendAction:to:forEvent:));
    Method zx_method = class_getInstanceMethod(self, @selector(zx_sendAction:to:forEvent:));
    method_exchangeImplementations(method, zx_method);
}


#pragma mark - Action functions

- (void)zx_sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event {
    
    if (self.eventUnavailable == NO) {
        self.eventUnavailable = YES;
        [self zx_sendAction:action to:target forEvent:event];
        [self performSelector:@selector(setEventUnavailable:) withObject:@(NO) afterDelay:self.zx_eventInterval];
    }
}


#pragma mark - Setter & Getter functions

- (NSTimeInterval)zx_eventInterval {
    
    return [objc_getAssociatedObject(self, zx_eventIntervalKey) doubleValue];
}

- (void)setzx_eventInterval:(NSTimeInterval)zx_eventInterval {
    
    objc_setAssociatedObject(self, zx_eventIntervalKey, @(zx_eventInterval), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (BOOL)eventUnavailable {
    
    return [objc_getAssociatedObject(self, eventUnavailableKey) boolValue];
}

- (void)setEventUnavailable:(BOOL)eventUnavailable {
    
    objc_setAssociatedObject(self, eventUnavailableKey, @(eventUnavailable), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
