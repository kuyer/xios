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
@synthesize alerter = _alerter;
@synthesize indicator = _indicator;
@synthesize editor = _editer;

// 屏幕被点击时调用
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"SecondViewController did load.");
    self.view.backgroundColor = [UIColor whiteColor];
    
    _editer = [[UITextField alloc] init];
    self.editor.frame = CGRectMake(10, 40, 300, 40);
    _editer.text = @"kuyer";
    self.editor.placeholder = @"请输入帐号";
    self.editor.font = [UIFont systemFontOfSize: 28];
    self.editor.textColor = [UIColor blueColor];
    self.editor.borderStyle = UITextBorderStyleRoundedRect;
    self.editor.keyboardType = UIKeyboardTypeDefault;
    self.editor.secureTextEntry = NO;
    self.editor.delegate = self;
    [self.view addSubview:self.editor];
    
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
    _stepper.frame = CGRectMake(10, 220, 300, 40);
    _stepper.minimumValue = 0;
    _stepper.maximumValue = 100;
    _stepper.value = 10;
    _stepper.stepValue = 1;
    _stepper.autorepeat = YES;
    _stepper.continuous = YES;
    [_stepper addTarget:self action:@selector(changeStepper) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_stepper];
    
    _segmenter = [[UISegmentedControl alloc] init];
    _segmenter.frame = CGRectMake(10, 280, 200, 40);
    [_segmenter insertSegmentWithTitle:@"0元" atIndex:0 animated:YES];
    [_segmenter insertSegmentWithTitle:@"20元" atIndex:1 animated:YES];
    [_segmenter insertSegmentWithTitle:@"50元" atIndex:2 animated:YES];
    [_segmenter addTarget:self action:@selector(changeSegmenter) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_segmenter];
    
    _switcher = [[UISwitch alloc] init];
    _switcher.frame = CGRectMake(20, 340, 80, 40);
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

// 屏幕被点击时调用
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.editor resignFirstResponder];
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

- (void) changeSegmenter {
    NSLog(@"change segmenter. value=%ld.", _segmenter.selectedSegmentIndex);
    if (_segmenter.selectedSegmentIndex == 1) {
        _alerter = [[UIAlertView alloc] initWithTitle:@"提示" message:@"确定要购买吗？" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", @"等待", nil];
        [_alerter show];
    } else if (_segmenter.selectedSegmentIndex ==2) {
        _indicator = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(10, 340, 300, 40)];
        _indicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
        [self.view addSubview:_indicator];
        [_indicator startAnimating];
        //[_indicator stopAnimating];
    } else {
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}

- (BOOL) textFieldShouldBeginEditing:(UITextField *)textField {
    return YES;
}
- (BOOL) textFieldShouldEndEditing:(UITextField *)textField {
    return YES;
}
- (void) textFieldDidBeginEditing:(UITextField *)textField {
    NSLog(@"editor start editing.");
}
- (void) textFieldDidEndEditing:(UITextField *)textField {
    NSLog(@"editor end editing.");
}

/*
-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    NSLog(@"alerter clicked, index=%ld.", buttonIndex);
}
-(void) alertView:(UIAlertView *)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex {
    NSLog(@"alerter will dismiss, index=%ld.", buttonIndex);
}
-(void) alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    NSLog(@"alerter did dismiss, index=%ld", buttonIndex);
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
