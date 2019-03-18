//
//  ZQTableView.m
//  PCHTest
//
//  Created by 赵前 on 2019/3/15.
//  Copyright © 2019年 赵前. All rights reserved.
//

#import "ZQTableView.h"
#import "BaseCellModel.h"

#define VIEWWIDTH self.bounds.size.width
#define VIEWHEIGHT self.bounds.size.height


@interface ZQTableView()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, copy)NSString* dentify;
@property (nonatomic, copy)NSArray* dataSource;

@end


@implementation ZQTableView


- (instancetype)initWithFrame:(CGRect)frame dentify:(NSString *)dentify dataSource:(id)dataSource
{
    self = [super initWithFrame:frame];
    if (self) {
        self.dentify = dentify;
        self.dataSource = dataSource;
        [self addSubview:self.tableView];
    }
    return self;
}

-(UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, VIEWWIDTH, VIEWWIDTH) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}

#pragma mark ------------------- tableview -------------------

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.dentify];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:self.dentify];
    }
    BaseCellModel* model = self.dataSource[indexPath.row];
    cell.textLabel.text = model.name;
    return cell;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataSource.count;
}

@end
