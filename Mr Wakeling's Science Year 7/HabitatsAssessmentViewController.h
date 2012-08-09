//
//  HabitatsAssessmentViewController.h
//  Mr Wakeling's Science Year 7
//
//  Created by Robert Wakeling on 09/08/2012.
//
//

#import <UIKit/UIKit.h>
#import "Tester.h"

@interface HabitatsAssessmentViewController : UIViewController <UITextFieldDelegate, UIAlertViewDelegate>
{
    int theScore;
}

@property (weak, nonatomic) IBOutlet UITextField *desert;
@property (weak, nonatomic) IBOutlet UITextField *woodland;
@property (weak, nonatomic) IBOutlet UITextField *coastal;
@property (weak, nonatomic) IBOutlet UITextField *polar;

@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

@end
