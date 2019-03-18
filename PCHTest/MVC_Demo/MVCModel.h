//
//  MVCModel.h
//  PCHTest
//
//  Created by 赵前 on 2019/3/15.
//  Copyright © 2019年 赵前. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MVCModel : NSObject


// 字符串
@property (nonatomic, copy)NSString *string;


/**
 模拟获取网络请求数据。

 @return 网络数据字符串
 */
- (NSString *)getrequestString;

@end

NS_ASSUME_NONNULL_END
