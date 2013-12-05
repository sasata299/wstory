//
//  ViewController.m
//  wstory
//
//  Created by sasata299 on 2013/12/06.
//  Copyright (c) 2013年 sasata299. All rights reserved.
//

#import <SVProgressHUD/SVProgressHUD.h>
#import <AFNetworking/AFNetworking.h>
#import "ViewController.h"
#import "QiitaViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSArray *responseData;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.title = @"ストックした記事一覧";
    
    [SVProgressHUD showWithMaskType:SVProgressHUDMaskTypeBlack];
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:@"https://qiita.com/api/v1/users/sasata299/stocks" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        self.responseData = responseObject;
        [self.tableView reloadData];
        [SVProgressHUD dismiss];
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)table numberOfRowsInSection:(NSInteger)section
{
    return [self.responseData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    if (self.responseData) {
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.textLabel.text = self.responseData[indexPath.row][@"title"];
    }
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    QiitaViewController *qiitaViewController = [QiitaViewController new];
    qiitaViewController.stockData = self.responseData[indexPath.row];
    [self.navigationController pushViewController:qiitaViewController animated:true];
}

@end
