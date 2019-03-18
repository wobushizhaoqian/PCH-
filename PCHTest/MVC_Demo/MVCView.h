//
//  MVCView.h
//  PCHTest
//
//  Created by 赵前 on 2019/3/15.
//  Copyright © 2019年 赵前. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MVCView : UIView



@property (nonatomic, strong)UILabel *label;
@property (nonatomic , strong) void (^tapBlock)();
@end

NS_ASSUME_NONNULL_END
