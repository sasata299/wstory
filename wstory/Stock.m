//
//  Stock.m
//  wstory
//
//  Created by sasata299 on 2013/12/09.
//  Copyright (c) 2013年 sasata299. All rights reserved.
//

#import "Stock.h"

@implementation Stock

+ (RKObjectMapping *)responseMapping
{
    RKObjectMapping *mapping = [RKObjectMapping mappingForClass:[self class]];
    [mapping addAttributeMappingsFromDictionary:@{
                                                  @"title": @"title",
                                                  @"body": @"body",
                                                  @"url": @"url",
                                                  @"created_at": @"createdAt"
                                                  }];
    
    RKObjectMapping *userMapping = [User responseMapping];
    [mapping addPropertyMapping:[RKRelationshipMapping relationshipMappingFromKeyPath:@"user" toKeyPath:@"user" withMapping:userMapping]];
    
    return mapping;
}

@end
