//
//  HabitatsAssessmentViewController.m
//  Mr Wakeling's Science Year 7
//
//  Created by Robert Wakeling on 09/08/2012.
//
//

#import "HabitatsAssessmentViewController.h"

@interface HabitatsAssessmentViewController ()

@end

@implementation HabitatsAssessmentViewController
@synthesize desert;
@synthesize woodland;
@synthesize coastal;
@synthesize polar;
@synthesize scoreLabel;

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

-(IBAction)checkAnswers
{
    int a, b, c, d;
    
    if ([desert.text isEqualToString:@"Desert"]) {
        a = 1;
    }
    else
    {
        a = 0;
    }
    
    if ([woodland.text isEqualToString:@"Woodland"]) {
        b = 1;
    }
    else
    {
        b = 0;
    }
    
    if ([coastal.text isEqualToString:@"Coastal"]) {
        c = 1;
    }
    else
    {
        c = 0;
    }
    
    if ([polar.text isEqualToString:@"Polar"]) {
        d = 1;
    }
    else
    {
        d = 0;
    }
    theScore = a + b + c + d;
    scoreLabel.text = [NSString stringWithFormat:@"%i", theScore];
    if (theScore < 3) {
        scoreLabel.textColor = [UIColor redColor];
    }
    if (theScore == 3) {
        scoreLabel.textColor = [UIColor orangeColor];
    }
    if (theScore == 4) {
        scoreLabel.textColor = [UIColor greenColor];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Congratulations!" message:@"You know some common habitat names" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
    }
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return NO;
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    Tester *detail = [self.storyboard instantiateViewControllerWithIdentifier:@"Overall1"];
    [self.navigationController pushViewController:detail animated:YES];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"Habitats3" object:self];
}

- (void)viewDidUnload
{
    [self setDesert:nil];
    [self setWoodland:nil];
    [self setCoastal:nil];
    [self setPolar:nil];
    [self setScoreLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
