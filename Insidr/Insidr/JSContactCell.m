//
//  JSContactCell.m
//  Insidr
//
//  Created by Shola Oyedele on 8/18/13.
//  Copyright (c) 2013 Shola Oyedele. All rights reserved.
//

#import "JSContactCell.h"

@implementation JSContactCell

@synthesize userPhoto;
@synthesize profileName;
@synthesize connectionLabel;
@synthesize timelineButton;
@synthesize strengthView;


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) layoutSubviews
{
    [super layoutSubviews];
    
    //for (UIView *view in self.subviews) {   // Go through all subviews
    //   if (view == buttonYouWant)   // Find the button you want
    //         view.frame = CGRectOffset(view.frame, 0, -5);   // Move it
    //}
}

@end
