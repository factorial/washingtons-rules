//
//  WashingtonsFirstViewController.m
//  Washington's Rules
//
//  Created by John Hayes on 3/30/14.
//  Copyright (c) 2014 SoftWhatever. All rights reserved.
//

#import "WashingtonsFirstViewController.h"

@interface WashingtonsFirstViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIView *ruleCard;

@end

@implementation WashingtonsFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CGFloat cardBottom = self.ruleCard.bounds.origin.y + self.ruleCard.bounds.size.height;
    self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width,
                                             self.view.frame.size.height + cardBottom);

    [self.scrollView addSubview:(self.ruleCard)];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
