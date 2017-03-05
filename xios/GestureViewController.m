//
//  GestureViewController.m
//  xios
//
//  Created by rory.zhang on 17/3/5.
//  Copyright © 2017年 rory.zhang. All rights reserved.
//

#import "GestureViewController.h"

@interface GestureViewController ()

@end

@implementation GestureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    int width = self.view.frame.size.width;
    int height = self.view.frame.size.height;
    
    UIImage *image = [UIImage imageNamed:@"1.jpeg"];
    _imageView = [[UIImageView alloc] init];
    _imageView.image = image;
    _imageView.frame = CGRectMake(50, 50, width-100, height-100);
    _imageView.userInteractionEnabled = YES;
    
    UITapGestureRecognizer *tapOneGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapOneGes:)];
    tapOneGes.numberOfTapsRequired = 1;
    tapOneGes.numberOfTouchesRequired = 1;
    [_imageView addGestureRecognizer:tapOneGes];
    
    UITapGestureRecognizer *tapTwoGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapTwoGes:)];
    tapTwoGes.numberOfTapsRequired = 2;
    tapTwoGes.numberOfTouchesRequired = 1;
    [_imageView addGestureRecognizer:tapTwoGes];
    
    [tapOneGes requireGestureRecognizerToFail:tapTwoGes];
    
    [self.view addSubview:_imageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) tapOneGes:(UITapGestureRecognizer*) tap {
    NSLog(@"tap one.");
    UIImageView *imageView = (UIImageView*) tap.view;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:2];
    imageView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    [UIView commitAnimations];
}

-(void) tapTwoGes:(UITapGestureRecognizer*) tap {
    NSLog(@"tap two.");
    UIImageView *imageView = (UIImageView*) tap.view;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    imageView.frame = CGRectMake(50, 50, self.view.frame.size.width-100, self.view.frame.size.height-100);
    [UIView commitAnimations];
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
