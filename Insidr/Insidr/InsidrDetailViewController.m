//
//  InsidrDetailViewController.m
//  Insidr
//
//  Created by Shola Oyedele on 8/20/13.
//  Copyright (c) 2013 Shola Oyedele. All rights reserved.
//

#import "InsidrDetailViewController.h"

@interface InsidrDetailViewController ()

@end

@implementation InsidrDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showContactDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        InsidrDetailViewController *destViewController = segue.destinationViewController;
        //destViewController.recipeName = [recipes objectAtIndex:indexPath.row];
    }
}
@end
