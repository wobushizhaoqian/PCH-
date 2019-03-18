//
//  MVCViewController.m
//  PCHTest
//
//  Created by 赵前 on 2019/3/15.
//  Copyright © 2019年 赵前. All rights reserved.
//

#import "MVCViewController.h"

#import "MVCView.h"

#import "MVCModel.h"

@interface MVCViewController ()

@property (nonatomic, strong)MVCView *mvcView;

@end

@implementation MVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUI];
    [self setDatas];
    // Do any additional setup after loading the view.
}

- (void)setDatas{
    __weak typeof(self)weakSelf = self;
    self.mvcView.tapBlock = ^{
        MVCModel *model = [MVCModel new];
        NSString * temString = [model getrequestString];
        weakSelf.mvcView.label.text = temString;
    };
}
- (void) setUI{
    [self.view addSubview:self.mvcView];
}

- (MVCView *)mvcView{
    if (!_mvcView) {
        _mvcView = [[MVCView alloc]initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight)];
    }
    return _mvcView;
}



@end
