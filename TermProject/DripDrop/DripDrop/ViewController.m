//
//  ViewController.m
//  DripDrop
//
//  Created by Dazey, Craig Michael Jr. on 1/21/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import "ViewController.h"
#import "BackgroundChooser.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //BackgroundChooser* bg = [[BackgroundChooser alloc] init];
    //[bg getNewBGImage];
    //printf("test");
    
    BackgroundChooser* bgChooser = [[BackgroundChooser alloc]init];
    [bgChooser getNewBGImage];
    
    }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)unwindToThisViewController:(UIStoryboardSegue *)unwindSegue
{
    
}

@end
