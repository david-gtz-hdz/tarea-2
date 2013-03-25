//
//  LogInViewController.m
//  tarea 2
//
//  Created by Mariana Alatorre on 23/03/13.
//  Copyright (c) 2013 Mariana Alatorre. All rights reserved.
//

#import "LogInViewController.h"
#import "myCellController.h"
#import "ViewController.h"

@interface LogInViewController ()

@end

@implementation LogInViewController
@synthesize myTableViewHW;
//array
@synthesize myArrayPets;
@synthesize images; 

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.

    //array
    myArrayPets   = [[NSMutableArray alloc]init];
    [myArrayPets addObject:@"Dog1"];
    [myArrayPets addObject:@"Cat2"];
    [myArrayPets addObject:@"Dog3"];
    
    //images

    images = [NSMutableArray new];
    UIImage *Image1= [UIImage imageNamed:@"images.jpeg"];
    [images addObject:Image1];
    UIImage *Image2= [UIImage imageNamed:@"gato-lindo.jpg"];
    [images addObject:Image2];
    UIImage *Image3= [UIImage imageNamed:@"images (1).jpeg"];
    [images addObject:Image3];
   
    
}

//heigh images


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return [myArrayPets count];
    }


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    myCellController *cell1 = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    cell1.myLabelPet.text = [myArrayPets objectAtIndex:indexPath.row];

    cell1.imageView.image = [images objectAtIndex:indexPath.row];
    cell1.myLabelPet.text = [myArrayPets objectAtIndex:indexPath.row];
    
    return cell1;
    
}


// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)




- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
   
    
    NSString *cellText = cell.textLabel.text;
    [myArrayPets addObject:cellText];
    [myTableViewHW setAllowsSelection:YES];
    
}





@end
