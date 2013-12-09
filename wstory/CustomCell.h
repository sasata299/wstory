//
//  CustomCell.h
//  wstory
//
//  Created by sasata299 on 2013/12/07.
//  Copyright (c) 2013年 sasata299. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *userImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

- (void)show:(NSDictionary *)stockData;

@end
