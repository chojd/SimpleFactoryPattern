//
//  TableViewController.m
//  SimpleFactoryPattern
//
//  Created by Jade Tsao on 7/3/16.
//  Copyright © 2016 OFashion. All rights reserved.
//

#import "DynomicTableViewController.h"

#import "DynamicItem.h"

#import "DynamicCellSimpleFactory.h"
#import "DynamicBaseCell.h"

@interface DynomicTableViewController ()

@property (nonatomic, strong) NSMutableArray *dataSource;

@end

@implementation DynomicTableViewController

- (void)awakeFromNib {
    [super awakeFromNib];
    self.dataSource = [NSMutableArray arrayWithCapacity:100];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *items = [DynamicItem randomCreareDynamic];
    !items.count ?: [self.dataSource addObjectsFromArray:items];
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    DynamicItem *item = self.dataSource[indexPath.row];
    Class cellClass = [DynamicCellSimpleFactory dynamicBaseCellClassWithDynamicItem:item];
    
    [tableView registerClass:cellClass forCellReuseIdentifier:NSStringFromClass(cellClass)];
    DynamicBaseCell *cell = (DynamicBaseCell *)[tableView dequeueReusableCellWithIdentifier:NSStringFromClass(cellClass)
                                                                               forIndexPath:indexPath];
    
    [cell reloadWithDynamicItem:item];
    return cell;
}

#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    DynamicItem *item = self.dataSource[indexPath.row];
    return [DynamicCellSimpleFactory dynamicCellHeightWithDynamicItem:item];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
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
