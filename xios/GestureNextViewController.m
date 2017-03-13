//
//  GestureNextViewController.m
//  xios
//
//  Created by rory.zhang on 17/3/7.
//  Copyright © 2017年 rory.zhang. All rights reserved.
//

#import "GestureNextViewController.h"

@interface GestureNextViewController ()

@end

@implementation GestureNextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImage* image = [UIImage imageNamed:@"1.jpeg"];
    UIImageView* imageView = [[UIImageView alloc] initWithImage:image];
    imageView.frame = CGRectMake(100, 100, 100, 180);
    imageView.userInteractionEnabled = YES;
    [self.view addSubview:imageView];
    
    _pinch = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(doPinch:)];
    [imageView addGestureRecognizer:_pinch];
    _pinch.delegate = self;
    
    _rotation = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(doRotation:)];
    [imageView addGestureRecognizer:_rotation];
    _rotation.delegate = self;
}

- (void) doPinch:(UIPinchGestureRecognizer*) pinch {
    NSLog(@"doPinch...");
    UIImageView* imageView = (UIImageView*) pinch.view;
    imageView.transform = CGAffineTransformScale(imageView.transform, pinch.scale, pinch.scale);
    pinch.scale = 1;
}

- (void) doRotation:(UIRotationGestureRecognizer*) rotation {
    NSLog(@"doRotation...");
    UIImageView* imageView = (UIImageView*) rotation.view;
    imageView.transform = CGAffineTransformRotate(imageView.transform, rotation.rotation);
    rotation.rotation = 0;
}

- (BOOL) gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    return YES;
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
