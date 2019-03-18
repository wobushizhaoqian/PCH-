//
//  MVCView.m
//  PCHTest
//
//  Created by 赵前 on 2019/3/15.
//  Copyright © 2019年 赵前. All rights reserved.
//

#import "MVCView.h"

@implementation MVCView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.label];
        [self addLabelGesture];
    }
    return self;
}

- (UILabel *)label{
    if (!_label) {
        _label = [[UILabel alloc]initWithFrame:CGRectMake(0, 50, ScreenWidth , ScreenHeight - 100)];
        _label.backgroundColor = [UIColor yellowColor];
        _label.text = @"hello123";
        _label.userInteractionEnabled = YES;
    }
    return _label;
}

- (void)addLabelGesture{
    UITapGestureRecognizer *geture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(respondsTogeture:)];
    [self.label addGestureRecognizer:geture];
}

- (void)respondsTogeture:(UITapGestureRecognizer *)sender{
    if (self.tapBlock) {
        self.tapBlock();
    }
}
@end
