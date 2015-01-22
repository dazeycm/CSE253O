//
//  Player.h
//  DripDrop
//
//  Created by Dazey, Craig Michael Jr. on 1/21/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property UIView *gameView;
@property CGRect playerRect;
@property (strong) UIImage *playerImage;
@property (strong) UIImageView *playerView;

-(Player *) initPlayer:(UIView *) gameView;
-(void) movePlayerRight;
-(void) movePlayerLeft;
-(UIView *) getPlayerView;
@end

