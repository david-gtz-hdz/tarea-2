//
//  myCellController.m
//  tarea 2
//
//  Created by Mariana Alatorre on 23/03/13.
//  Copyright (c) 2013 Mariana Alatorre. All rights reserved.
//

#import "myCellController.h"

@implementation myCellController

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [[event allTouches] anyObject];
    
    if ([self.myTextCell   isFirstResponder] && [touch view]  != self.myTextCell ) {
        
        [self.myTextCell resignFirstResponder];
    }
}


@end
