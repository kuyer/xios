//
//  Layout1View.m
//  xios
//
//  Created by rory.zhang on 17/3/13.
//  Copyright © 2017年 rory.zhang. All rights reserved.
//

#import "Layout1View.h"

@implementation Layout1View

-(void) createViews {
    _view01 = [[UIView alloc] init];
    _view01.frame = CGRectMake(0, 0, 20, 20);
    _view01.backgroundColor = [UIColor greenColor];
    [self addSubview:_view01];
    
    _view02 = [[UIView alloc] init];
    _view02.frame = CGRectMake(self.bounds.size.width-20, 0, 20, 20);
    _view02.backgroundColor = [UIColor greenColor];
    [self addSubview:_view02];
    
    _view03 = [[UIView alloc] init];
    _view03.frame = CGRectMake(0, self.bounds.size.height-20, 20, 20);
    _view03.backgroundColor = [UIColor greenColor];
    [self addSubview:_view03];
    
    _view04 = [[UIView alloc] init];
    _view04.frame = CGRectMake(self.bounds.size.width-20, self.bounds.size.height-20, 20, 20);
    _view04.backgroundColor = [UIColor greenColor];
    [self addSubview:_view04];
}

-(void) layoutSubviews {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    _view01.frame = CGRectMake(0, 0, 20, 20);
    _view02.frame = CGRectMake(self.bounds.size.width-20, 0, 20, 20);
    _view03.frame = CGRectMake(0, self.bounds.size.height-20, 20, 20);
    _view04.frame = CGRectMake(self.bounds.size.width-20, self.bounds.size.height-20, 20, 20);
    [UIView commitAnimations];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
