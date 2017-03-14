//
//  Layout2ViewController.m
//  xios
//
//  Created by rory.zhang on 17/3/14.
//  Copyright © 2017年 rory.zhang. All rights reserved.
//

#import "Layout2ViewController.h"

@interface Layout2ViewController ()

@end

@implementation Layout2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIView* view = [[UIView alloc] init];
    view.frame = CGRectMake(self.view.frame.size.width/4, self.view.frame.size.height/4, self.view.frame.size.width/2, self.view.frame.size.height/2);
    view.tag = 101;
    view.backgroundColor = [UIColor blueColor];
    
    UIView* center = [[UIView alloc] init];
    center.backgroundColor = [UIColor greenColor];
    center.frame = CGRectMake(0, view.frame.size.height/2-10, view.frame.size.width, 20);
    center.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleWidth;
    [view addSubview:center];
    
    UILabel* label1 = [[UILabel alloc] init];
    label1.text = @"1";
    label1.textAlignment = NSTextAlignmentCenter;
    label1.backgroundColor = [UIColor greenColor];
    label1.frame = CGRectMake(0, 0, 20, 20);
    [view addSubview:label1];
    
    UILabel* label2 = [[UILabel alloc] init];
    label2.text = @"2";
    label2.textAlignment = NSTextAlignmentCenter;
    label2.backgroundColor = [UIColor greenColor];
    label2.frame = CGRectMake(view.frame.size.width-20, 0, 20, 20);
    label2.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin;
    [view addSubview:label2];
    
    UILabel* label3 = [[UILabel alloc] init];
    label3.text = @"3";
    label3.textAlignment = NSTextAlignmentCenter;
    label3.backgroundColor = [UIColor greenColor];
    label3.frame = CGRectMake(0, view.frame.size.height-20, 20, 20);
    label3.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
    [view addSubview:label3];
    
    UILabel* label4 = [[UILabel alloc] init];
    label4.text = @"4";
    label4.textAlignment = NSTextAlignmentCenter;
    label4.backgroundColor = [UIColor greenColor];
    label4.frame = CGRectMake(view.frame.size.width-20, view.frame.size.height-20, 20, 20);
    label4.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleLeftMargin;
    [view addSubview:label4];
    
    [self.view addSubview:view];
}

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    static BOOL isLarge = YES;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    
    UIView* view = [self.view viewWithTag:101];
    if (isLarge) {
        view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    } else {
        view.frame = CGRectMake(self.view.frame.size.width/4, self.view.frame.size.height/4, self.view.frame.size.width/2, self.view.frame.size.height/2);
    }
    
    [UIView commitAnimations];
    
    isLarge = !isLarge;
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
