//
//  FirstViewController.h
//  xios
//
//  Created by rory.zhang on 17/2/25.
//  Copyright © 2017年 rory.zhang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface FirstViewController : UIViewController {
    
    NSTimer *_timer;// 定时器
    
}

// 定时器属性对象（对外使用）
@property (retain, nonatomic) NSTimer *timer;

@end
