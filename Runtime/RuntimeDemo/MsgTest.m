//
//  MsgTest.m
//  RuntimeDemo
//
//  Created by 孙昕 on 16/3/31.
//  Copyright © 2016年 孙昕. All rights reserved.
//

#import "MsgTest.h"
#import <objc/runtime.h>
static NSString *g_str;
void setStr(id self ,SEL _cmd,NSString* str)
{
    g_str=[str stringByAppendingString:@":)"];
}

NSString* str(id self,SEL _cmd)
{
    return g_str;
}
@implementation MsgTest
@dynamic str;
-(instancetype)init
{
    if(self=[super init])
    {
        _obj=[[MsgObj alloc] init];
        _obj.str=@"aaa";
    }
    return self;
}


//+(BOOL)resolveInstanceMethod:(SEL)sel
//{
//    if(sel==@selector(setStr:))
//    {
//        class_addMethod([self class], sel, (IMP)setStr, "v@:@");
//        return YES;
//    }
//    else if(sel==@selector(str))
//    {
//        class_addMethod([self class], sel, (IMP)str, "@@:");
//        return YES;
//    }
//    return [super resolveInstanceMethod:sel];
//}

//-(id)forwardingTargetForSelector:(SEL)aSelector
//{
//    if(aSelector==@selector(setStr:))
//    {
//        return _obj;
//    }
//    else if(aSelector==@selector(str))
//    {
//        return _obj;
//    }
//    return [super forwardingTargetForSelector:aSelector];
//}

- (NSMethodSignature*)methodSignatureForSelector:(SEL)selector
{
    NSMethodSignature* signature = [super methodSignatureForSelector:selector];
    if (!signature) {
        signature = [_obj methodSignatureForSelector:selector];
    }
    return signature;
}

- (void)forwardInvocation:(NSInvocation *)anInvocation
{
    if ([_obj respondsToSelector:
         [anInvocation selector]])
        [anInvocation invokeWithTarget:_obj];
    else
        [super forwardInvocation:anInvocation];
}
@end

@implementation MsgObj

@end






