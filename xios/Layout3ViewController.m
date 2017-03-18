//
//  Layout3ViewController.m
//  xios
//
//  Created by rory.zhang on 17/3/18.
//  Copyright © 2017年 rory.zhang. All rights reserved.
//

#import "Layout3ViewController.h"

@interface Layout3ViewController ()

@end

@implementation Layout3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    
    // 透明度 YES透明 NO不透明
    self.navigationController.navigationBar.translucent = NO;
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    self.navigationController.navigationBar.barTintColor = [UIColor orangeColor];
    self.navigationController.navigationBar.tintColor = [UIColor greenColor];
    //self.navigationController.navigationBar.hidden = YES;
    self.navigationController.navigationBarHidden = NO;
    
    self.title = @"根视图";
    self.navigationItem.title = @"父视图";
    
    UIBarButtonItem* leftBtn = [[UIBarButtonItem alloc] initWithTitle:@"左侧" style:UIBarButtonItemStyleDone target:self action:@selector(doLeftBtn)];
    self.navigationItem.leftBarButtonItem = leftBtn;
    
    UIBarButtonItem* rightBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(doRightBtn)];
    //self.navigationItem.rightBarButtonItem = rightBtn;
    
    UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 80, 40)];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"Hello";
    UIBarButtonItem* labelBtn = [[UIBarButtonItem alloc] initWithCustomView:label];
    
    NSArray *btns = [NSArray arrayWithObjects:rightBtn, labelBtn, nil];
    self.navigationItem.rightBarButtonItems = btns;
    
    self.navigationController.toolbarHidden = NO;
    self.navigationController.toolbar.translucent = YES;
    
    UIBarButtonItem* btn1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemPlay target:nil action:nil];
    UIBarButtonItem* btn2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemPause target:nil action:nil];
    UIBarButtonItem* btn3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemStop target:nil action:nil];
    UIBarButtonItem* btn4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:nil action:nil];
    
    //UIBarButtonItem* split = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    //split.width = 50;
    
    UIBarButtonItem* atspt = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    NSArray* toolbarArr = [NSArray arrayWithObjects:btn1, atspt, btn2, atspt, btn3, atspt, btn4, nil];
    self.toolbarItems = toolbarArr;
}

- (void) doLeftBtn {
    NSLog(@"左侧按钮被按下");
}

- (void) doRightBtn {
    NSLog(@"右侧按钮被按下");
    Layout31ViewController* layout31 = [[Layout31ViewController alloc] init];
    [self.navigationController pushViewController:layout31 animated:YES];
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
