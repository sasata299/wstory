//
//  User.h
//  wstory
//
//  Created by sasata299 on 2013/12/09.
//  Copyright (c) 2013年 sasata299. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (nonatomic, copy) NSString *urlName;
@property (nonatomic, copy) NSString *profileImageURL;

+ (RKObjectMapping *)responseMapping;

@end
