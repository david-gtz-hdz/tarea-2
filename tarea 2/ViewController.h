//
//  ViewController.h
//  tarea 2
//
//  Created by Mariana Alatorre on 23/03/13.
//  Copyright (c) 2013 Mariana Alatorre. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
//Textfields
@property (weak, nonatomic) IBOutlet UITextField *UserText;
@property (weak, nonatomic) IBOutlet UITextField *PassWordText;



- (IBAction)LogButton:(id)sender;

@end
