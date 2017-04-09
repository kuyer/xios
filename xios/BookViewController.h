//
//  BookViewController.h
//  xios
//
//  Created by rory.zhang on 17/4/9.
//  Copyright © 2017年 rory.zhang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BookModel.h"

@interface BookViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> {
    UITableView* _tableView;
    NSMutableArray* _array;
}
@end
