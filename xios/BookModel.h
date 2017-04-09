//
//  BookModel.h
//  xios
//
//  Created by rory.zhang on 17/4/9.
//  Copyright © 2017年 rory.zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BookModel : NSObject
{
    NSString* _name;
    NSString* _describe;
}

@property (retain, nonatomic) NSString* name;
@property (retain, nonatomic) NSString* describe;

@end
