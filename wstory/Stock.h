//
//  Stock.h
//  wstory
//
//  Created by sasata299 on 2013/12/09.
//  Copyright (c) 2013年 sasata299. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface Stock : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *body;
@property (nonatomic, copy) NSString *url;
@property (nonatomic, copy) NSString *createdAt;
@property (nonatomic, strong) User *user;

+ (RKObjectMapping *)responseMapping;

@end
