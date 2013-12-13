//
//  CustomCell.m
//  wstory
//
//  Created by sasata299 on 2013/12/07.
//  Copyright (c) 2013年 sasata299. All rights reserved.
//

#import "CustomCell.h"
#import "Stock.h"

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

- (void)show:(Stock *)stockData
{
    self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    NSString *profileImageURL = stockData.user.profileImageURL;
    NSURL *userImageURL = [NSURL URLWithString:profileImageURL];
    [self.userImageView setImageWithURL:userImageURL placeholderImage:[UIImage imageNamed:@"Image"]];
    
    self.titleLabel.text = stockData.title;
}

@end
