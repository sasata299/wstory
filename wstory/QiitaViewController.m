//
//  QiitaViewController.m
//  wstory
//
//  Created by sasata299 on 2013/12/06.
//  Copyright (c) 2013年 sasata299. All rights reserved.
//

#import "QiitaViewController.h"

@interface QiitaViewController ()

@end

@implementation QiitaViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.title = self.stockData.title;
	
    UIWebView *webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    
    NSURL *url = [NSURL URLWithString:self.stockData.url];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [webView loadRequest:request];
    
    [self.view addSubview:webView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
