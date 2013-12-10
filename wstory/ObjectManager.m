//
//  ObjectManager.m
//  wstory
//
//  Created by sasata299 on 2013/12/09.
//  Copyright (c) 2013年 sasata299. All rights reserved.
//

#import "ObjectManager.h"
#import "Stock.h"

@implementation ObjectManager

- (instancetype)init
{
    NSURL *baseURL = [NSURL URLWithString:@"https://qiita.com"];
    AFHTTPClient *client = [[AFHTTPClient alloc] initWithBaseURL:baseURL];
    if (client) {
        [client setDefaultHeader:@"Accept" value:@"application/json"];
        [client registerHTTPOperationClass:[AFJSONRequestOperation class]];
        
        [AFNetworkActivityIndicatorManager sharedManager].enabled = YES;
    }
    
    self = [super initWithHTTPClient:client];
    if (self) {
        [self addStockDescriptors];
    }
    return self;
}

- (void)addStockDescriptors
{
    RKObjectMapping *responseMapping = [Stock responseMapping];
    [self addResponseDescriptorsFromArray:@[
        [RKResponseDescriptor responseDescriptorWithMapping:responseMapping
                                                     method:RKRequestMethodGET
                                                pathPattern:@"/api/v1/users/sasata299/stocks"
                                                    keyPath:nil
                                                statusCodes:RKStatusCodeIndexSetForClass(RKStatusCodeClassSuccessful)]
    ]];
}

@end
