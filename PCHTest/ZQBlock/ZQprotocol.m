//
//  ZQprotocol.m
//  PCHTest
//
//  Created by 赵前 on 2019/3/19.
//  Copyright © 2019年 赵前. All rights reserved.
//

#import "ZQprotocol.h"

@implementation ZQprotocol

- (void)startWork{
    if (self.delegate && [self.delegate respondsToSelector:@selector(work)]) {
        [self.delegate work];
    }
}
- (void)startRelaxing{
    if (self.delegate && [self.delegate respondsToSelector:@selector(relaxing)]) {
        [self.delegate relaxing];
    }
}

@end
