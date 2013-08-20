//
//  JSContactCell.h
//  Insidr
//
//  Created by Shola Oyedele on 8/18/13.
//  Copyright (c) 2013 Shola Oyedele. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JSContactCell : UITableViewCell

- (void) layoutSubviews;

@property (weak, nonatomic) IBOutlet UIImageView *userPhoto;
@property (weak, nonatomic) IBOutlet UILabel *profileName;
@property (weak, nonatomic) IBOutlet UILabel *connectionLabel;
@property (weak, nonatomic) IBOutlet UIButton *timelineButton;
@property (weak, nonatomic) IBOutlet UIView *strengthView;

@end
