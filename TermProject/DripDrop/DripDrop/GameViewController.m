//
//  GameViewController.m
//  DripDrop
//
//  Created by Dazey, Craig Michael Jr. on 1/21/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import "GameViewController.h"
#import "Drop.h"

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
    
    self.playerRect = CGRectMake(150, 450, 32, 32);
    self.playerView.frame = self.playerRect;
    
	[self.view addSubview: self.playerView];
    [[[Drop alloc]init] startDrops:self.view];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)moveLeft:(id)sender {
    [self releaseTouch];
    [self.playerView setImage: [UIImage imageNamed:@"blocky_left.png"]];
    self.moveTimer = [NSTimer scheduledTimerWithTimeInterval:.03
                                                      target:self
                                                    selector:@selector(movePlayerLeft)
                                                    userInfo:nil
                                                     repeats:YES];
}

- (IBAction)moveRight:(id)sender {
    [self releaseTouch];
    [self.playerView setImage: [UIImage imageNamed:@"blocky_right.png"]];
    self.moveTimer = [NSTimer scheduledTimerWithTimeInterval:.03
                                                      target:self
                                                    selector:@selector(movePlayerRight)
                                                    userInfo:nil
                                                     repeats:YES];
}

- (IBAction)TouchRelease:(id)sender {
    [self releaseTouch];
    [self.playerView setImage: [UIImage imageNamed:@"blocky.png"]];
}

-(void) movePlayerRight{
    if(self.playerRect.origin.x <= 290){
        self.playerRect = CGRectOffset(self.playerRect, 3, 0);
        self.playerView.frame = self.playerRect;
    }
}
-(void) movePlayerLeft{
    if(self.playerRect.origin.x >= 0){
        self.playerRect = CGRectOffset(self.playerRect, -3, 0);
        self.playerView.frame = self.playerRect;
    }
}
-(void)releaseTouch{
    if(self.moveTimer != nil){
        [self.moveTimer invalidate];
        self.moveTimer = nil;
    }
}


@end
