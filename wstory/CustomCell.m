//
//  CustomCell.m
//  wstory
//
//  Created by sasata299 on 2013/12/07.
//  Copyright (c) 2013年 sasata299. All rights reserved.
//

#import <SDWebImage/UIImageView+WebCache.h>
#import "CustomCell.h"

@implementation CustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (!self) {
        return nil;
    }
    
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)show:(NSDictionary *)stockData
{
    self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    NSURL *userImageURL = [NSURL URLWithString:stockData[@"user"][@"profile_image_url"]];
    [self.userImageView setImageWithURL:userImageURL placeholderImage:[UIImage imageNamed:@"Image"]];
    
    self.titleLabel.text = stockData[@"title"];
}

@end
