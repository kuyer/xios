//
//  ImageViewController.m
//  xios
//
//  Created by rory.zhang on 17/3/4.
//  Copyright © 2017年 rory.zhang. All rights reserved.
//

#import "ImageViewController.h"

@interface ImageViewController ()

@end

@implementation ImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _sview = [[UIScrollView alloc] init];
    
    NSInteger snums = 7;
    NSInteger width = self.view.frame.size.width;
    NSInteger height = self.view.frame.size.height;
    
    _sview.frame = CGRectMake(0, 0, width, height);
    _sview.pagingEnabled = NO;
    _sview.scrollEnabled = YES;
    //_sview.contentSize = CGSizeMake(width*snums, height);
    _sview.contentSize = CGSizeMake(width, height*snums);
    _sview.bounces = YES;
    _sview.alwaysBounceHorizontal = NO;
    _sview.alwaysBounceVertical = YES;
    _sview.showsHorizontalScrollIndicator = YES;
    _sview.showsVerticalScrollIndicator = YES;
    _sview.backgroundColor = [UIColor yellowColor];
    _sview.contentOffset = CGPointMake(0, 0);
    _sview.delegate = self;
    
    for(int i=0; i<snums; i++) {
        NSString *name = [NSString stringWithFormat:@"%d.jpeg",i+1];
        UIImage *image = [UIImage imageNamed:name];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        //imageView.frame = CGRectMake(width*i, 0, width, height);
        imageView.frame = CGRectMake(0, height*i, width, height);
        [_sview addSubview:imageView];
    }
    
    [self.view addSubview:_sview];
}

- (void) scrollViewDidScroll:(UIScrollView *)scrollView {
    NSLog(@"x=%f, y=%f.", scrollView.contentOffset.x, scrollView.contentOffset.y);
}

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //_sview.contentOffset = CGPointMake(0, 0);
    [_sview scrollRectToVisible:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.width*3) animated:true];
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
