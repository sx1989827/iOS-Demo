//
//  ThirdViewController.m
//  AutolayoutTest
//
//  Created by 孙昕 on 16/3/3.
//  Copyright © 2016年 孙昕. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController
-(void)loadView
{
    UIView *view=[[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    view.backgroundColor=[UIColor yellowColor];
    self.view=view;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
