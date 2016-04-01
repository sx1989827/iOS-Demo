//
//  UILabel+UILabel_Category.m
//  RuntimeDemo
//
//  Created by 孙昕 on 16/3/31.
//  Copyright © 2016年 孙昕. All rights reserved.
//

#import "UILabel+UILabel_Category.h"
#import <objc/runtime.h>
#import "Hook.h"
static const char g_tipChar;
@implementation UILabel (UILabel_Category)
-(void)setTip:(NSString *)tip
{
    objc_setAssociatedObject(self, &g_tipChar, tip, OBJC_ASSOCIATION_RETAIN);
}

-(NSString*)tip
{
    return objc_getAssociatedObject(self, &g_tipChar);
}

+(void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [Hook hookMethod:[UILabel class] OriginSelector:@selector(willMoveToSuperview:) SwizzledSelector:@selector(myWillMoveToSuperview:)];
    });
}

-(void)willMoveToSuperview:(UIView *)newSuperview
{
    NSLog(@"1");
}

-(void)myWillMoveToSuperview:(UIView *)newSuperview
{
    [self myWillMoveToSuperview:newSuperview];
    self.font=[UIFont fontWithName:@"Georgia" size:self.font.pointSize];
}
@end











