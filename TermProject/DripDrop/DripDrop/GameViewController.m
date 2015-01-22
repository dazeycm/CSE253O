//
//  GameViewController.m
//  DripDrop
//
//  Created by ;, Craig Michael Jr. on 1/21/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import "GameViewController.h"

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
    self.score = 0;
    self.Player = [[[Player alloc]init]initPlayer:self.view];
    self.playerView = [self.player getPlayerView];
    self.drop = [[[Drop alloc]init] startDrops: self.view];
    
    self.intersectTimer = [NSTimer scheduledTimerWithTimeInterval:.03
                                                          target:self
                                                        selector:@selector(intersectCheck)
                                                        userInfo:nil
                                                         repeats:YES];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)moveLeft:(id)sender {
    [self releaseTouch];
    [self.player.playerView setImage: [UIImage imageNamed:@"blocky_left.png"]];
    self.moveTimer = [NSTimer scheduledTimerWithTimeInterval:.03
                                                      target:self.player
                                                    selector:@selector(movePlayerLeft)
                                                    userInfo:nil
                                                     repeats:YES];
}

- (IBAction)moveRight:(id)sender {
    [self releaseTouch];
    [self.player.playerView setImage: [UIImage imageNamed:@"blocky_right.png"]];
    self.moveTimer = [NSTimer scheduledTimerWithTimeInterval:.03
                                                      target:self.player
                                                    selector:@selector(movePlayerRight)
                                                    userInfo:nil
                                                     repeats:YES];
}

- (IBAction)TouchRelease:(id)sender {
    [self releaseTouch];
    [self.player.playerView setImage: [UIImage imageNamed:@"blocky.png"]];
}

-(void)releaseTouch{
    if(self.moveTimer != nil){
        [self.moveTimer invalidate];
        self.moveTimer = nil;
    }
}

-(void) intersectCheck  {
    for(int i = 0; i < self.drop.drops.count; i++)   {
        Drip* tmpDrop = self.drop.drops[i];
        if(CGRectIntersectsRect(tmpDrop.dropRect, self.player.playerRect))    {
            [tmpDrop.dropView removeFromSuperview];
        }
    }
}

















@end
