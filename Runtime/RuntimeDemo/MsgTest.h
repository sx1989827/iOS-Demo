//
//  MsgTest.h
//  RuntimeDemo
//
//  Created by 孙昕 on 16/3/31.
//  Copyright © 2016年 孙昕. All rights reserved.
//

#import <Foundation/Foundation.h>
@class MsgObj;
@interface MsgTest : NSObject
@property (strong,nonatomic) NSString *str;
@property (strong,nonatomic) MsgObj* obj;
@end

@interface MsgObj:NSObject
@property (strong,nonatomic) NSString *str;
@end