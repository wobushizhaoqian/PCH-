//
//  RouterViewController.m
//  PCHTest
//
//  Created by 赵前 on 2019/3/19.
//  Copyright © 2019年 赵前. All rights reserved.
//

#import "RouterViewController.h"
#import "WebTestViewController.h"
#import "MVCViewController.h"

@interface RouterViewController ()



@end

@implementation RouterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

+ (void)routerWithSting:(NSString *)routerString{
    
}


- (NSDictionary *)loadBasemode{
    return @{@"web":@"WebTestViewController",
             @"mvc":@"MVCViewController"
             };
}


@end
