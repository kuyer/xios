//
//  FirstViewController.h
//  xios
//
//  Created by rory.zhang on 17/2/25.
//  Copyright © 2017年 rory.zhang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"
#import "LoginViewController.h"
#import "ImageViewController.h"
#import "GestureViewController.h"
#import "GestureNextViewController.h"
#import "Layout1ViewController.h"

@interface FirstViewController : UIViewController {
    
    NSTimer *_timer;// 定时器
    
    CGPoint _lastPoint;
    
}

// 定时器属性对象（对外使用）
@property (retain, nonatomic) NSTimer *timer;

@end
