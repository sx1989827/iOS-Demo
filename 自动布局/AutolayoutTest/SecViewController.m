//
//  SecViewController.m
//  AutolayoutTest
//
//  Created by 孙昕 on 16/3/3.
//  Copyright © 2016年 孙昕. All rights reserved.
//

#import "SecViewController.h"
#import "ThirdViewController.h"
@interface SecViewController ()
- (IBAction)onClick:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *btn;

@end

@implementation SecViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)onClick:(id)sender
{
    ThirdViewController *vc=[[ThirdViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}
@end





