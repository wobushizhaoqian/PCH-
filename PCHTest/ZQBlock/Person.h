//
//  Person.h
//  PCHTest
//
//  Created by 赵前 on 2019/3/19.
//  Copyright © 2019年 赵前. All rights reserved.
//

#import <Foundation/Foundation.h>


#import "ZQprotocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject <protocol>

@property (nonatomic ,strong)ZQprotocol *protocol;

- (void)click;

@end

NS_ASSUME_NONNULL_END
