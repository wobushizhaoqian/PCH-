//
//  ZQTableView.h
//  PCHTest
//
//  Created by 赵前 on 2019/3/15.
//  Copyright © 2019年 赵前. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZQTableView : UIView


@property (nonatomic, strong)UITableView *tableView;

/**
 快速初始化一个表格

 @param frame 位置大小
 @param dentify 复用字段
 @param dataSource 表格数据
 @return view实例
 */
- (instancetype)initWithFrame:(CGRect)frame dentify:(NSString *)dentify dataSource:(id)dataSource;

@end

NS_ASSUME_NONNULL_END
