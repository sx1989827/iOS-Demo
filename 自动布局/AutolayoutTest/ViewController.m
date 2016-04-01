//
//  ViewController.m
//  AutolayoutTest
//
//  Created by 孙昕 on 16/3/3.
//  Copyright © 2016年 孙昕. All rights reserved.
//

#import "ViewController.h"
#import "SecViewController.h"
@interface ViewController ()
- (IBAction)onClick:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *btn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn=_btn;
//    [self.view removeConstraints:self.view.constraints];
//    //[btn removeConstraints:btn.constraints];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|-20-[btn]-20-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(btn)]];
   // [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[btn(==30)]-20-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(btn)]];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onClick:(id)sender
{
    SecViewController *vc=[[SecViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end









