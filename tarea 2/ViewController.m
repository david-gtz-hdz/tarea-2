//
//  ViewController.m
//  tarea 2
//
//  Created by Mariana Alatorre on 23/03/13.
//  Copyright (c) 2013 Mariana Alatorre. All rights reserved.
//

#import "ViewController.h"
#import "LogInViewController.h" 
#import "myCellController.h"


@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
 
    
}

#pragma mark Delegate  UITextField 

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    if (textField == self.UserText) {
        [self.PassWordText becomeFirstResponder ];
    } else if (textField == self.PassWordText){

        if ([self.UserText.text isEqualToString:@"test"] && [self.PassWordText.text isEqualToString:@"test"]) {
            NSLog(@"Pasa a lo siguiente");
            LogInViewController *LogInstance = [self.storyboard instantiateViewControllerWithIdentifier:@"TableViewOne"];
            [self presentViewController:LogInstance animated:YES completion:nil];
        }
        
        NSLog(@"Hi %@", self.UserText.text );
        NSLog(@"Hi 2 %@", self.PassWordText.text );
            }
        
        
        
    return YES; 
}           // called when 'return' key pressed. return NO to ignore.

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [[event  allTouches] anyObject];
    if ([self.PassWordText isFirstResponder] && [touch view] != self.PassWordText) {
        [self.PassWordText resignFirstResponder];
    } else if ([self.UserText isFirstResponder] && [touch view] != self.UserText) {
        [self.UserText resignFirstResponder];
    }
    
}



- (IBAction)LogButton:(id)sender {
}
@end
