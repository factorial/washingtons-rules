//
//  WashingtonsViewController.m
//  Washington's Rules
//
//  Created by John Hayes on 4/1/14.
//  Copyright (c) 2014 SoftWhatever. All rights reserved.
//

#import "WashingtonsViewController.h"

@interface WashingtonsViewController ()
@end

@implementation WashingtonsViewController

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
    
    CGFloat cardCornerRadius = 15.0;
    
    // Give the Rule Card rounded corners. The Right Way™ to do this is probably to create a Card class that inherits from UIView and make that the class that self.ruleCard uses.
    [self.ruleCard.layer setCornerRadius:cardCornerRadius];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
