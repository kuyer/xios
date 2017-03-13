//
//  Layout1ViewController.m
//  xios
//
//  Created by rory.zhang on 17/3/13.
//  Copyright © 2017年 rory.zhang. All rights reserved.
//

#import "Layout1ViewController.h"

@interface Layout1ViewController ()

@end

@implementation Layout1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Layout1View* lv = [[Layout1View alloc] init];
    lv.frame = CGRectMake(20, 20, 80, 150);
    lv.backgroundColor = [UIColor blueColor];
    [lv createViews];
    lv.tag = 101;
    [self.view addSubview:lv];
    
    UIButton* btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn1.frame = CGRectMake(20, self.view.frame.size.height-40, 50, 40);
    [btn1 setTitle:@"放大" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(doBtn1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
    UIButton* btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn2.frame = CGRectMake(80, self.view.frame.size.height-40, 50, 40);
    [btn2 setTitle:@"缩小" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(doBtn2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
}

- (void) doBtn1 {
    Layout1View* lv = [self.view viewWithTag:101];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    lv.frame = CGRectMake(20, 20, 180, 320);
    [UIView commitAnimations];
}

- (void) doBtn2 {
    Layout1View* lv = [self.view viewWithTag:101];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    lv.frame = CGRectMake(20, 20, 80, 150);
    [UIView commitAnimations];
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

@end
