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
@synthesize progresser = _progresser;
@synthesize slider = _slider;
@synthesize stepper = _stepper;
@synthesize segmenter = _segmenter;

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
    
    _progresser = [[UIProgressView alloc] init];
    _progresser.frame = CGRectMake(10, 100, 200, 40);
    // 进度颜色
    _progresser.progressTintColor = [UIColor redColor];
    // 默认颜色
    _progresser.trackTintColor = [UIColor greenColor];
    _progresser.progress = 0.7;
    _progresser.progressViewStyle = UIProgressViewStyleDefault;
    [self.view addSubview:_progresser];
    
    _slider = [[UISlider alloc] init];
    _slider.frame = CGRectMake(10, 160, 200, 40);
    _slider.minimumValue = 0;
    _slider.maximumValue = 100;
    _slider.value = 30;
    //滑块颜色
    _slider.thumbTintColor = [UIColor blueColor];
    //滑块左侧颜色
    _slider.minimumTrackTintColor = [UIColor redColor];
    //滑块右侧颜色
    _slider.maximumTrackTintColor = [UIColor greenColor];
    [_slider addTarget:self action:@selector(changeSlider) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_slider];
    
    _stepper = [[UIStepper alloc] init];
    _stepper.frame = CGRectMake(10, 220, 200, 40);
    _stepper.minimumValue = 0;
    _stepper.maximumValue = 100;
    _stepper.value = 10;
    _stepper.stepValue = 1;
    _stepper.autorepeat = YES;
    _stepper.continuous = YES;
    [_stepper addTarget:self action:@selector(changeStepper) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_stepper];
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

- (void) changeSlider {
    NSLog(@"slider value=%f", _slider.value);
    _progresser.progress = (_slider.value - _slider.minimumValue) / (_slider.maximumValue - _slider.minimumValue);
}

- (void) changeStepper {
    NSLog(@"change stepper. value=%f.", _stepper.value);
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
