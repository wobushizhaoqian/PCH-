//
//  WebTestViewController.m
//  PCHTest
//
//  Created by 赵前 on 2019/3/18.
//  Copyright © 2019年 赵前. All rights reserved.
//

#import "WebTestViewController.h"
#import <WebKit/WebKit.h>

@interface WebTestViewController ()<WKUIDelegate,WKNavigationDelegate>

@end

@implementation WebTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    WKWebViewConfiguration *config = [[WKWebViewConfiguration alloc] init];
    config.preferences = [[WKPreferences alloc] init];
    config.preferences.minimumFontSize = 10;
    config.preferences.javaScriptEnabled = YES;
    config.preferences.javaScriptCanOpenWindowsAutomatically = NO;
    config.userContentController = [[WKUserContentController alloc] init];
    [config.userContentController addScriptMessageHandler:self name:@"alert"];
    config.processPool = [[WKProcessPool alloc] init];
    WKWebView * webView = [[WKWebView alloc]initWithFrame:self.view.bounds configuration:config];
    webView.UIDelegate = self;
    webView.navigationDelegate = self;
    webView.allowsBackForwardNavigationGestures = YES;

 
    NSString *path = [[NSBundle mainBundle] pathForResource:@"test.html" ofType:nil];
    NSString *htmlString = [[NSString alloc]initWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    //加载本地html文件
    [webView loadHTMLString:htmlString baseURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] bundlePath]]];
    
    [self.view addSubview:webView];
    // Do any additional setup after loading the view.
}

- (void)addScriptMessageHandler:(id <WKScriptMessageHandler>)scriptMessageHandler name:(NSString *)name{
    
}

- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message{
    NSLog(@"123");
}



@end
