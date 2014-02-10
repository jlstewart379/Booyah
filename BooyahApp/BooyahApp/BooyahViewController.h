//
//  BooyahViewController.h
//  BooyahApp
//
//  Created by Jeremy Stewart on 2/9/14.
//  Copyright (c) 2014 northwoods. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BooyahViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *booyahLabel;
@property (weak, nonatomic) IBOutlet UITextField *booyahTextField;
@property (weak, nonatomic) IBOutlet UIButton *booyahButton;
@property (weak, nonatomic) IBOutlet UILabel *theHiddenBooyah;
- (IBAction)booyahButtonPressed:(id)sender;

@end
