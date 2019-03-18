//
//  HelloView.m
//  PCHTest
//
//  Created by 赵前 on 2019/3/15.
//  Copyright © 2019年 赵前. All rights reserved.
//

#import "HelloView.h"

@interface HelloView()
@property(weak)UIImageView *imageView;
@end



@implementation HelloView


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self testHello];
    }
    return self;
}

#pragma mark - hello
- (void) testHello{
    NSLog(@"hello2");
}


@end




