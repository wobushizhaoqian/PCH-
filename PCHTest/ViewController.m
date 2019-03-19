//
//  ViewController.m
//  PCHTest
//
//  Created by 赵前 on 2019/3/15.
//  Copyright © 2019年 赵前. All rights reserved.
//

#import "ViewController.h"
#import "HelloView.h"
#import "MVC_Demo/MVCViewController.h"
#import "ZQTabView/ZQTableView.h"
#import "ZQTabView/BaseCellModel.h"
#import "ZQBlock/Person.h"
#import "ZQBlock/ZQprotocol.h"

@interface ViewController ()<protocol>

@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //分类
//    [NSString printHello];
    // 初始化一个表格
//    HelloView *hello = [HelloView new];
    
    
    // mvc例子
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, ScreenWidth, ScreenHeight/2);
    [button addTarget:self action:@selector(respondsToButton:) forControlEvents:UIControlEventTouchUpInside];
    button.backgroundColor = [UIColor greenColor];
    [self.view addSubview:button];
//
//
//    NSMutableArray *array = [@[] mutableCopy];
//    for (int i=0; i<10 ; i++) {
//        BaseCellModel *model = [BaseCellModel new];
//        model.name = [NSString stringWithFormat:@"zhaoqian %d",i];
//        [array addObject:model];
//    }
//    ZQTableView *zqTableView = [[ZQTableView alloc]initWithFrame:CGRectMake(0, ScreenHeight/2, ScreenWidth, ScreenHeight/2) dentify:@"zhaoqian" dataSource:array];
//    [self.view addSubview:zqTableView];
    
    
    Person *person = [Person new];
    [person click];
    
}
- (void)respondsToButton:(UIButton *)sender{
//    MVCViewController * mvcController = [MVCViewController new];
//    [self presentViewController:mvcController animated:NO completion:nil];
}


-(void)work{
    NSLog(@"i am working");
}

@end
