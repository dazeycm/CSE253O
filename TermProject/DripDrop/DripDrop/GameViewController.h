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
#import "DBManager.h"
#import "BackgroundChooser.h"

@interface GameViewController : UIViewController

@property (strong) UIView *playerView;
@property (strong) NSTimer *moveTimer;
@property (strong) NSTimer *intersectTimer;
@property (strong) NSTimer *scoreTimer;
@property  BackgroundChooser* bgChooser;
@property (strong) Player* player;
@property (strong) Drop* drop;
@property int score;
@property (weak, nonatomic) IBOutlet UILabel *scoreText;
@property (weak, nonatomic) IBOutlet UITextField *userInput;
@property (weak, nonatomic) IBOutlet UILabel *enterNameTxt;
@property (weak, nonatomic) IBOutlet UIButton *goToMainMenuButton;


- (IBAction)moveLeft:(id)sender;
- (IBAction)moveRight:(id)sender;
- (IBAction)TouchRelease:(id)sender;

-(void) intersectCheck;
-(void) gameOver;


@end
