//
//  SecondViewController.h
//  xios
//
//  Created by rory.zhang on 17/2/25.
//  Copyright © 2017年 rory.zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController {
    
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
    
}

@property (retain, nonatomic) UISwitch *switcher;
@property (retain, nonatomic) UIProgressView *progresser;
@property (retain, nonatomic) UISlider *slider;
@property (retain, nonatomic) UIStepper *stepper;
@property (retain, nonatomic) UISegmentedControl *segmenter;

@end
