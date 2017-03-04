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
    stopBtn.frame = CGRectMake(100, 150, 100, 40);
    [stopBtn setTitle:@"停止" forState:UIControlStateNormal];
    [stopBtn addTarget:self action:@selector(doStop) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:stopBtn];
    
    UIButton *loginBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    loginBtn.frame = CGRectMake(100, 200, 100, 40);
    [loginBtn setTitle:@"登录" forState:UIControlStateNormal];
    [loginBtn addTarget:self action:@selector(doLogin) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginBtn];
    
    UIButton *imageBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    imageBtn.frame = CGRectMake(100, 250, 100, 40);
    [imageBtn setTitle:@"影集" forState:UIControlStateNormal];
    [imageBtn addTarget:self action:@selector(doImage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:imageBtn];
    
    UIButton *elementBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    elementBtn.frame = CGRectMake(100, 300, 100, 40);
    [elementBtn setTitle:@"元素" forState:UIControlStateNormal];
    [elementBtn addTarget:self action:@selector(doElement) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:elementBtn];
    
    UIView *view = [[UIView alloc] init];
    view.frame = CGRectMake(0, 0, 80, 80);
    view.backgroundColor = [UIColor blueColor];
    view.tag = 101;
    [self.view addSubview:view];
}

- (void) doLogin {
    LoginViewController *loginViewController = [[LoginViewController alloc] init];
    [self presentViewController:loginViewController animated:YES completion:nil];
}

- (void) doImage {
    ImageViewController *imageViewController = [[ImageViewController alloc] init];
    [self presentViewController:imageViewController animated:YES completion:nil];
}

- (void) doElement {
    SecondViewController *secondViewController = [[SecondViewController alloc] init];
    [self presentViewController:secondViewController animated:YES completion:nil];
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

// 屏幕被点击时调用
-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint p = [touch locationInView:self.view];
    NSLog(@"touch begin. tap count: %lu. x=%f, y=%f.", touch.tapCount, p.x, p.y);
    _lastPoint = p;
}

-(void) touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint p = [touch locationInView:self.view];
    NSLog(@"touch move. x=%f, y=%f.", p.x, p.y);
    
    float xOffset = p.x - _lastPoint.x;
    float yOffset = p.y - _lastPoint.y;
    
    _lastPoint = p;
    
    
    UIView *view = [self.view viewWithTag:101];
    view.frame = CGRectMake(view.frame.origin.x + xOffset,
                            view.frame.origin.y + yOffset,
                            view.frame.size.width,
                            view.frame.size.height);
}
-(void) touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint p = [touch locationInView:self.view];
    NSLog(@"touch end. x=%f, y=%f.", p.x, p.y);
}
-(void) touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touch cancel.");
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
