//
//  Person.m
//  PCHTest
//
//  Created by 赵前 on 2019/3/19.
//  Copyright © 2019年 赵前. All rights reserved.
//

#import "Person.h"


@implementation Person





#pragma mark ------------------- private method -------------------

- (void)click{
    [self.protocol startWork];
    sleep(3);
    [self.protocol startRelaxing];
}


#pragma mark ------------------- lazy loading -------------------
- (ZQprotocol *)protocol{
    if (!_protocol) {
        _protocol = [ZQprotocol new];
        _protocol.delegate = self;
    }
    return _protocol;
}

- (void)work{
    NSLog(@" i am working now");
}
- (void)relaxing{
    NSLog(@"i am relaxing now");
}


@end
