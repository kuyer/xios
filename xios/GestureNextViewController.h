//
//  GestureNextViewController.h
//  xios
//
//  Created by rory.zhang on 17/3/7.
//  Copyright © 2017年 rory.zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GestureNextViewController : UIViewController<UIGestureRecognizerDelegate>

{
    UIPinchGestureRecognizer* _pinch;
    UIRotationGestureRecognizer* _rotation;
}

@end
