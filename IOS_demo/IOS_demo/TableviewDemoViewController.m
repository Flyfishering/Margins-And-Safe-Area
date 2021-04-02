//
//  TableviewDemoViewController.m
//  IOS_demo
//
//  Created by Apple on 2021/4/2.
//

#import "TableviewDemoViewController.h"
#import "TBTableViewCell.h"

@interface TableviewDemoViewController ()<UITableViewDelegate, UITableViewDataSource>
@property(nonatomic, strong) UITableView *tableview;
@end

@implementation TableviewDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.tableview];
    
    [self.tableview.topAnchor constraintEqualToAnchor:self.view.layoutMarginsGuide.topAnchor].active = YES;
    [self.tableview.bottomAnchor constraintEqualToAnchor:self.view.layoutMarginsGuide.bottomAnchor].active = YES;
    [self.tableview.leadingAnchor constraintEqualToAnchor:self.view.layoutMarginsGuide.leadingAnchor].active = YES;
    [self.tableview.trailingAnchor constraintEqualToAnchor:self.view.layoutMarginsGuide.trailingAnchor].active = YES;

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 40;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TBTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TBTableViewCell"];
    cell.label.text = @"王某某 的 demo";
    return cell;
}

- (UITableView *)tableview
{
    if (!_tableview) {
        _tableview = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableview.delegate = self;
        _tableview.dataSource = self;
        [_tableview registerClass:[TBTableViewCell class] forCellReuseIdentifier:@"TBTableViewCell"];
        _tableview.insetsContentViewsToSafeArea = YES;
        _tableview.translatesAutoresizingMaskIntoConstraints = NO;
    }
    return _tableview;
}

@end
