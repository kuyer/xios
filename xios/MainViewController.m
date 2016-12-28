//
//  MainViewController.m
//  xios
//
//  Created by rory.zhang on 16/12/28.
//  Copyright © 2016年 rory.zhang. All rights reserved.
//

#import "MainViewController.h"
#import "DetailViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    
    UIButton *enterBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    enterBtn.frame = CGRectMake(50, 50, 240, 40);
    [enterBtn setTitle:@"Next View" forState:UIControlStateNormal];
    enterBtn.titleLabel.font = [UIFont systemFontOfSize:24];
    [enterBtn addTarget:self action:@selector(onEnterBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:enterBtn];
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

- (void) onEnterBtn {
    DetailViewController *detailViewController = [[DetailViewController alloc] init];
    detailViewController.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:detailViewController animated:true completion:nil];
}

@end
