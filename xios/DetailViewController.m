//
//  DetailViewController.m
//  xios
//
//  Created by rory.zhang on 16/12/28.
//  Copyright © 2016年 rory.zhang. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithRed:255 green:255 blue:255 alpha:0];
    
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    backBtn.frame = CGRectMake(50, 50, self.view.frame.size.width-100, 40);
    [backBtn setTitle:@"Back" forState:UIControlStateNormal];
    backBtn.titleLabel.font = [UIFont systemFontOfSize:24];
    [backBtn addTarget:self action:@selector(onBackBtn) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:backBtn];
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

- (void) onBackBtn {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
