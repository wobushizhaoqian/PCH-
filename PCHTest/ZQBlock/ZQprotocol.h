//
//  ZQprotocol.h
//  PCHTest
//
//  Created by 赵前 on 2019/3/19.
//  Copyright © 2019年 赵前. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


@protocol protocol <NSObject>

@required
- (void)work;

@optional
- (void)relaxing;

@end

@interface ZQprotocol : NSObject

@property (weak) id<protocol> delegate;


- (void) startWork;

- (void) startRelaxing;
@end

NS_ASSUME_NONNULL_END
