//
//  MVCModel.m
//  PCHTest
//
//  Created by 赵前 on 2019/3/15.
//  Copyright © 2019年 赵前. All rights reserved.
//

#import "MVCModel.h"

@implementation MVCModel

- (NSString *)getrequestString{
    return [NSString stringWithFormat:@"%d", arc4random() % 100];
}

@end
