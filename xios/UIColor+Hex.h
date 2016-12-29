//
//  UIColor+Hex.h
//  xios
//
//  Created by rory.zhang on 16/12/29.
//  Copyright © 2016年 rory.zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Hex)

+ (UIColor *) colorWithHex:(long)hexColor;
+ (UIColor *) colorWithHex:(long)hexColor alpha:(float) opacity;
+ (UIColor *) colorWithHexString:(NSString *)color;

@end
