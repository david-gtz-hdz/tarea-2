//
//  myCellController.h
//  tarea 2
//
//  Created by Mariana Alatorre on 23/03/13.
//  Copyright (c) 2013 Mariana Alatorre. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface myCellController : UITableViewCell <UITextFieldDelegate>



@property (weak, nonatomic) IBOutlet UITextField *myTextCell;
@property (weak, nonatomic) IBOutlet UIImageView *imgePet;

@property (weak, nonatomic) IBOutlet UILabel *myLabelPet;

@end
