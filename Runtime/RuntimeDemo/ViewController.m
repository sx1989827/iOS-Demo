//
//  ViewController.m
//  RuntimeDemo
//
//  Created by 孙昕 on 16/3/31.
//  Copyright © 2016年 孙昕. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+UILabel_Category.h"
#import "MsgTest.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _lbTest.tip=@"str";
    NSLog(@"%@",_lbTest.tip);
    MsgTest *obj=[[MsgTest alloc] init];
    obj.str=@"123";
    NSLog(@"%@",obj.str);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end







