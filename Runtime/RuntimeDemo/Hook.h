//
//  Hook.h
//  HorseRiding
//
//  Created by 孙昕 on 16/3/2.
//  Copyright © 2016年 LHCX. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Hook : NSObject
+(void)hookMethod:(Class)cls OriginSelector:(SEL)originalSelector SwizzledSelector:(SEL)swizzledSelector;
@end
