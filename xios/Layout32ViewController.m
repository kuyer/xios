//
//  Layout32ViewController.m
//  xios
//
//  Created by rory.zhang on 17/3/18.
//  Copyright © 2017年 rory.zhang. All rights reserved.
//

#import "Layout32ViewController.h"

@interface Layout32ViewController ()

@end

@implementation Layout32ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    self.navigationItem.title = @"三级视图";
    
    UIBarButtonItem* backBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:self action:@selector(doBackBtn)];
    self.navigationItem.leftBarButtonItem = backBtn;
    
    UIBarButtonItem* rootBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(doRootBtn)];
    self.navigationItem.rightBarButtonItem = rootBtn;
}

- (void) doBackBtn {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void) doRootBtn {
    [self.navigationController popToRootViewControllerAnimated:YES];
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
