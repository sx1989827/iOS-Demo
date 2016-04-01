//
//  Hook.m
//  HorseRiding
//
//  Created by 孙昕 on 16/3/2.
//  Copyright © 2016年 LHCX. All rights reserved.
//

#import "Hook.h"
#import <objc/runtime.h>
@implementation Hook
+(void)hookMethod:(Class)cls OriginSelector:(SEL)originalSelector SwizzledSelector:(SEL)swizzledSelector
{
    
    Method originalMethod = class_getInstanceMethod(cls, originalSelector);
    Method swizzledMethod = class_getInstanceMethod(cls, swizzledSelector);
    
    BOOL didAddMethod =
    class_addMethod(cls,
                    originalSelector,
                    method_getImplementation(swizzledMethod),
                    method_getTypeEncoding(swizzledMethod));
    if (didAddMethod) {
        class_replaceMethod(cls,
                            swizzledSelector,
                            method_getImplementation(originalMethod),
                            method_getTypeEncoding(originalMethod));
    } else {
        method_exchangeImplementations(originalMethod, swizzledMethod);
    }
}
@end











