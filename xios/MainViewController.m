//
//  MainViewController.m
//  xios
//
//  Created by rory.zhang on 16/12/28.
//  Copyright © 2016年 rory.zhang. All rights reserved.
//

#import "MainViewController.h"
#import "DetailViewController.h"
#import "UIColor+Hex.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithRed:255 green:255 blue:255 alpha:0];

    UIView *headView = [[UIView alloc] init];
    headView.frame = CGRectMake(0, 0, self.view.frame.size.width, 60);
    headView.backgroundColor = [UIColor colorWithHexString:@"#3c8dbc"];
    //headView.backgroundColor = [UIColor blueColor];
    //headView.tag = 1000;
    //headView.alpha = 0.8;
    headView.clipsToBounds = YES;
    [self.view addSubview:headView];
    
    UIView *footView = [[UIView alloc] init];
    footView.frame = CGRectMake(0, self.view.frame.size.height-40, self.view.frame.size.width, 40);
    footView.backgroundColor = [UIColor colorWithHexString:@"#f8f8f8"];
    //footView.tag = 1000;
    footView.layer.borderWidth = 1.0f;
    footView.layer.borderColor = (__bridge CGColorRef _Nullable)([UIColor redColor]);
    footView.clipsToBounds = YES;
    [self.view addSubview:footView];
    
    UIButton *enterBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    enterBtn.frame = CGRectMake(50, 150, self.view.frame.size.width-100, 40);
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
    detailViewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:detailViewController animated:true completion:nil];
}

- (UIStatusBarStyle) preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

@end
