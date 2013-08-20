//
//  InsiderCell.h
//  Insider
//
//  Created by Shola Oyedele on 8/14/13.
//  Copyright (c) 2013 Shola Oyedele. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InsiderCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *profileName;
@property (weak, nonatomic) IBOutlet UILabel *connectionLabel;
@property (weak, nonatomic) IBOutlet UIImageView *userPhoto;
@property (weak, nonatomic) IBOutlet UIView *strengthView;

@end
