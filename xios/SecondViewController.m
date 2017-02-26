//
//  SecondViewController.m
//  xios
//
//  Created by rory.zhang on 17/2/25.
//  Copyright © 2017年 rory.zhang. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize switcher = _switcher;

// 屏幕被点击时调用
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:YES completion:nil];
}

// 屏幕被点击时调用
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"SecondViewController did load.");
    self.view.backgroundColor = [UIColor whiteColor];
    
    _switcher = [[UISwitch alloc] init];
    _switcher.frame = CGRectMake(20, 40, 80, 40);
    //_switcher.on = YES;
    //[_switcher setOn:YES];
    [_switcher setOn:YES animated:YES];
    //设置开关选中颜色
    [_switcher setOnTintColor: [UIColor redColor]];
    //设置开关按钮颜色
    [_switcher setThumbTintColor: [UIColor blueColor]];
    //设置开关风格颜色
    [_switcher setTintColor: [UIColor purpleColor]];
    [_switcher addTarget:self action:@selector(changeSwitcher:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_switcher];
}

// 内存不足时被调用
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    NSLog(@"SecondViewController recevie memory warning.");
}

- (void) changeSwitcher:(UISwitch *) switcher {
    if(switcher.on == YES) {
        NSLog(@"switcher is opened.");
    } else {
        NSLog(@"switcher is closed.");
    }
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
