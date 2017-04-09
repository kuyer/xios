//
//  BookViewController.m
//  xios
//
//  Created by rory.zhang on 17/4/9.
//  Copyright © 2017年 rory.zhang. All rights reserved.
//

#import "BookViewController.h"

@interface BookViewController ()

@end

@implementation BookViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];

    [self parseData];
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _array.count;
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString* id = @"ID";
    UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:id];
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:id];
    }
    BookModel* book = [_array objectAtIndex:indexPath.row];
    cell.textLabel.text = book.name;
    cell.detailTextLabel.text = book.describe;
    return cell;
}

-(void) parseData {
    NSString* path = [[NSBundle mainBundle] pathForResource:@"book" ofType:@"json"];
    NSData* data = [NSData dataWithContentsOfFile:path];
    NSDictionary* rootDict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    if ([rootDict isKindOfClass:[NSDictionary class]]) {
        _array = [[NSMutableArray alloc] init];
        NSArray* arrDict = [rootDict objectForKey:@"books"];
        for(int i=0; i<arrDict.count; i++) {
            NSDictionary* objDict = [arrDict objectAtIndex:i];
            NSString* name = [objDict objectForKey:@"name"];
            NSString* describe = [objDict objectForKey:@"describe"];
            BookModel* book = [[BookModel alloc] init];
            book.name = name;
            book.describe = describe;
            [_array addObject:book];
        }
    }
    [_tableView reloadData];
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
