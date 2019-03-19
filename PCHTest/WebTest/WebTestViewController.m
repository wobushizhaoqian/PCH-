//
//  WebTestViewController.m
//  PCHTest
//
//  Created by 赵前 on 2019/3/18.
//  Copyright © 2019年 赵前. All rights reserved.
//

#import "WebTestViewController.h"
#import <WebKit/WebKit.h>

@interface WebTestViewController ()<WKUIDelegate,WKNavigationDelegate,WKScriptMessageHandler>

@property (nonatomic, strong)WKWebView *webView;

@end

@implementation WebTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.webView];
    // Do any additional setup after loading the view.
}



#pragma mark ------------------- WKNavigationDelegate -------------------
// 页面开始加载时调用
- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation {
}

// 页面加载完成之后调用
- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
}

// 页面加载失败时调用
- (void)webView:(WKWebView *)webView didFailProvisionalNavigation:(WKNavigation *)navigation {
}




#pragma mark ------------------- WKScriptMessageHandler -------------------

- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message{
    // 获取js点击
    // message.body 为post过来的参数  id类型
    NSLog(@"%@",[NSString stringWithFormat:@"%@",message.name]);
    
    //点击之后调用下js里面自己的方法
    [self evaluateJSWithString:@"hello2()"];
}
#pragma mark ------------------- private method -------------------

- (void)evaluateJSWithString:(NSString *)string{
    [self.webView evaluateJavaScript:string completionHandler:^(id _Nullable respondse, NSError * _Nullable error) {
        
    }];
}


#pragma mark ------------------- lazy loading -------------------
- (WKWebView *)webView{
    if (!_webView) {
        WKWebViewConfiguration *config = [[WKWebViewConfiguration alloc]init];
        config.preferences = [WKPreferences new];
        config.preferences.javaScriptEnabled = YES;
        config.preferences.minimumFontSize = 40;
        config.preferences.javaScriptCanOpenWindowsAutomatically = NO;
        config.userContentController = [[WKUserContentController alloc]init];
        [config.userContentController addScriptMessageHandler:self name:@"ScanAction"];
        _webView = [[WKWebView alloc]initWithFrame:self.view.bounds configuration:config];
        _webView.navigationDelegate = self;
        _webView.UIDelegate = self;
        NSString *path = [[NSBundle mainBundle] pathForResource:@"test.html" ofType:nil];
        NSString *htmlString = [[NSString alloc]initWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
        //加载本地html文件
        [_webView loadHTMLString:htmlString baseURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] bundlePath]]];
    }
    return _webView;
}


@end
