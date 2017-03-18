//
//  Layout31ViewController.m
//  xios
//
//  Created by rory.zhang on 17/3/18.
//  Copyright © 2017年 rory.zhang. All rights reserved.
//

#import "Layout31ViewController.h"

@interface Layout31ViewController ()

@end

@implementation Layout31ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
    self.navigationItem.title = @"二级视图";
    UIBarButtonItem* nextBtn = [[UIBarButtonItem alloc] initWithTitle:@"下一级" style:UIBarButtonItemStylePlain target:self action:@selector(doNext)];
    self.navigationItem.rightBarButtonItem = nextBtn;
}

- (void) doNext {
    NSLog(@"跳转第三级");
    Layout32ViewController* layout32 = [[Layout32ViewController alloc] init];
    [self.navigationController pushViewController:layout32 animated:YES];
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
