//
//  FirstViewController.m
//  xios
//
//  Created by rory.zhang on 17/2/25.
//  Copyright © 2017年 rory.zhang. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

// 属性和成员变量同步
@synthesize timer = _timer;

// 屏幕被点击时调用
-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    SecondViewController *secondViewController = [[SecondViewController alloc] init];
    [self presentViewController:secondViewController animated:YES completion:nil];
}

// 第一次加载视图时调用
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"FirstViewController did load.");
    self.view.backgroundColor = [UIColor orangeColor];
    
    UIButton *startBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    startBtn.frame = CGRectMake(100, 100, 100, 40);
    [startBtn setTitle:@"开始" forState:UIControlStateNormal];
    [startBtn addTarget:self action:@selector(doStart) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:startBtn];
    
    UIButton *stopBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    stopBtn.frame = CGRectMake(100, 200, 100, 40);
    [stopBtn setTitle:@"停止" forState:UIControlStateNormal];
    [stopBtn addTarget:self action:@selector(doStop) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:stopBtn];
    
    UIView *view = [[UIView alloc] init];
    view.frame = CGRectMake(0, 0, 80, 80);
    view.backgroundColor = [UIColor blueColor];
    view.tag = 101;
    [self.view addSubview:view];
}

- (void) doStart {
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(updateTimer:) userInfo:@"start" repeats:YES];
}

- (void) doStop {
    if(_timer != nil) {
        [_timer invalidate];//停止定时器
    }
}

- (void) updateTimer:(NSTimer *) timer {
    NSLog(@"update timer. name=%@", timer.userInfo);
    UIView *view = [self.view viewWithTag:101];
    view.frame = CGRectMake(view.frame.origin.x+1, view.frame.origin.y+1, view.frame.size.width, view.frame.size.height);
}

// 视图显示之前时调用
- (void) viewWillAppear:(BOOL)animated {
    NSLog(@"FirstViewController will appear.");
}

// 视图显示之后时调用
- (void) viewDidAppear:(BOOL)animated {
    NSLog(@"FirstViewController did appear.");
}

// 视图消失之前调用
-(void) viewWillDisappear:(BOOL)animated {
    NSLog(@"FirstViewController will disappear.");
}

// 视图消失之后调用
-(void) viewDidDisappear:(BOOL)animated {
    NSLog(@"FirstViewController did disappear.");
}

// 内存不足时被调用
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    NSLog(@"FirstViewController memory receive memory warning.");
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
