//
//  BooyahViewController.m
//  BooyahApp
//
//  Created by Jeremy Stewart on 2/9/14.
//  Copyright (c) 2014 northwoods. All rights reserved.
//

#import "BooyahViewController.h"

@interface BooyahViewController ()

@end

@implementation BooyahViewController
@synthesize booyahButton, booyahLabel, booyahTextField, theHiddenBooyah;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [theHiddenBooyah setHidden:YES];
    
}

- (IBAction)booyahButtonPressed:(id)sender
{
     [theHiddenBooyah setHidden:NO];
}
@end
