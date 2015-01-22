//
//  GameViewController.h
//  DripDrop
//
//  Created by Dazey, Craig Michael Jr. on 1/21/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

//  TODO: KILL PLAYER, UMBRELLAS, DYNAMIC BG, LEADERBOARDS AND LEADERBOARD POPUP

#import <UIKit/UIKit.h>
#import "Player.h"
#import "Drop.h"
#import "Drip.h"

@interface GameViewController : UIViewController

@property (strong) UIView *playerView;
@property (strong) NSTimer *moveTimer;
@property (strong) NSTimer *intersectTimer;
@property (strong) NSTimer *scoreTimer;
@property (strong) Player* player;
@property (strong) Drop* drop;
@property int score;
@property (weak, nonatomic) IBOutlet UILabel *scoreText;

- (IBAction)moveLeft:(id)sender;
- (IBAction)moveRight:(id)sender;
- (IBAction)TouchRelease:(id)sender;

-(void) intersectCheck;


@end
