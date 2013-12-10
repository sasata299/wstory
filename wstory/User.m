//
//  User.m
//  wstory
//
//  Created by sasata299 on 2013/12/09.
//  Copyright (c) 2013年 sasata299. All rights reserved.
//

#import "User.h"

@implementation User

+ (RKObjectMapping *)responseMapping
{
    RKObjectMapping *mapping = [RKObjectMapping mappingForClass:[self class]];
    [mapping addAttributeMappingsFromDictionary:@{
                                                  @"url_name": @"urlName",
                                                  @"profile_image_url": @"profileImageURL"
                                                  }];
    return mapping;
}

@end
