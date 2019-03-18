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

@interface ViewController ()

@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [NSString printHello];
    
    HelloView *hello = [HelloView new];
    
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, ScreenWidth, ScreenHeight/2);
    [button addTarget:self action:@selector(respondsToButton:) forControlEvents:UIControlEventTouchUpInside];
    button.backgroundColor = [UIColor greenColor];
    [self.view addSubview:button];
    
    
    NSMutableArray *array = [@[] mutableCopy];
    for (int i=0; i<10 ; i++) {
        BaseCellModel *model = [BaseCellModel new];
        model.name = [NSString stringWithFormat:@"zhaoqian %d",i];
        [array addObject:model];
    }
    ZQTableView *zqTableView = [[ZQTableView alloc]initWithFrame:CGRectMake(0, ScreenHeight/2, ScreenWidth, ScreenHeight/2) dentify:@"zhaoqian" dataSource:array];
    [self.view addSubview:zqTableView];
    
    
}
- (void)respondsToButton:(UIButton *)sender{
    MVCViewController * mvcController = [MVCViewController new];
    [self presentViewController:mvcController animated:NO completion:nil];
}


@end
