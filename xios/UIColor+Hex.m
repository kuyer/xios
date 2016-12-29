//
//  UIColor+Hex.m
//  xios
//
//  Created by rory.zhang on 16/12/29.
//  Copyright © 2016年 rory.zhang. All rights reserved.
//

#import "UIColor+Hex.h"

@implementation UIColor (Hex)

+ (UIColor *) colorWithHex:(long)hexColor; {
    return [UIColor colorWithHex:hexColor alpha:1.];
}
+ (UIColor *) colorWithHex:(long)hexColor alpha:(float) opacity; {
    float red = ((float)((hexColor & 0xFF0000) >> 16))/255.0;
    float green = ((float)((hexColor & 0xFF00) >> 8))/255.0;
    float blue = ((float)(hexColor & 0xFF))/255.0;
    return [UIColor colorWithRed:red green:green blue:blue alpha:opacity];
}
+ (UIColor *) colorWithHexString:(NSString *)color; {
    NSString *str = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] uppercaseString];
    if([str length] < 6) {
        return [UIColor clearColor];
    }
    if([str hasPrefix:@"0X"]) {
        str = [str substringFromIndex:2];
    } else if([str hasPrefix:@"#"]) {
        str = [str substringFromIndex:1];
    }
    if([str length] != 6) {
        return [UIColor clearColor];
    }
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *red = [str substringWithRange:range];
    range.location = 2;
    NSString *green = [str substringWithRange:range];
    range.location = 4;
    NSString *blue = [str substringWithRange:range];
    
    unsigned int r, g, b;
    [[NSScanner scannerWithString:red] scanHexInt:&r];
    [[NSScanner scannerWithString:green] scanHexInt:&g];
    [[NSScanner scannerWithString:blue] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float)r/255.0f) green:((float)g/255.0f) blue:((float)b/255.0f) alpha:1.0f];
}

@end
