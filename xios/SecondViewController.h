//
//  SecondViewController.h
//  xios
//
//  Created by rory.zhang on 17/2/25.
//  Copyright © 2017年 rory.zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController<UIAlertViewDelegate> {
    
    //选择器
    UISwitch *_switcher;
    //进度条
    UIProgressView *_progresser;
    //滑动条
    UISlider *_slider;
    //步进器
    UIStepper *_stepper;
    //分栏控制器
    UISegmentedControl *_segmenter;
    //弹出提示框
    UIAlertView *_alerter;
    //等待提示
    UIActivityIndicatorView *_indicator;
    
}

@property (retain, nonatomic) UISwitch *switcher;
@property (retain, nonatomic) UIProgressView *progresser;
@property (retain, nonatomic) UISlider *slider;
@property (retain, nonatomic) UIStepper *stepper;
@property (retain, nonatomic) UISegmentedControl *segmenter;
@property (retain, nonatomic) UIAlertView *alerter;
@property (retain, nonatomic) UIActivityIndicatorView *indicator;

@end
