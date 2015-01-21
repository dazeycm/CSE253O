//
//  GameViewController.m
//  DripDrop
//
//  Created by Dazey, Craig Michael Jr. on 1/21/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import "GameViewController.h"

@interface GameViewController ()

@end

@implementation GameViewController

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
    self.playerImage = [UIImage imageNamed:@"blocky.png"];
    self.playerView = [[UIImageView alloc]initWithImage:self.playerImage];
    self.playerView.frame = CGRectMake(50, 400, 32, 32);
	[self.view addSubview: self.playerView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
