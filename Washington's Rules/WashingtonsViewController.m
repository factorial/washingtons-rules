//
//  WashingtonsViewController.m
//  Washington's Rules
//
//  Created by John Hayes on 4/1/14.
//  Copyright (c) 2014 SoftWhatever. All rights reserved.
//

#import "WashingtonsViewController.h"
#import "WashingtonsAppDelegate.h"

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
    
    // Get a random quote from the data store
    WashingtonsAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *managedObjectContext = appDelegate.managedObjectContext;
    
    NSEntityDescription *entityDesc =
    [NSEntityDescription entityForName:@"Rules"
                inManagedObjectContext:managedObjectContext];
    
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    [request setEntity:entityDesc];
    
    NSError *error;
    NSUInteger objectCount = [managedObjectContext countForFetchRequest:request error:&error];
    
    NSLog(@"object count is %lu", (unsigned long)objectCount);
    int randNum = arc4random() % (objectCount + 1);
    
    NSManagedObject *result = [[managedObjectContext executeFetchRequest:request error:&error] objectAtIndex:randNum];
    NSString *randomRuleText = [result valueForKey:@"text"];
    
    // Set the quote
    [self.ruleCardRule setSelectable:YES];
    [self.ruleCardRule setText:randomRuleText];
    [self.ruleCardRule setSelectable:NO];

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
