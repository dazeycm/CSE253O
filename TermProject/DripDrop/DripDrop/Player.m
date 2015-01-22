//
//  Player.m
//  DripDrop
//
//  Created by Dazey, Craig Michael Jr. on 1/21/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import "Player.h"

@implementation Player

-(Player *) initPlayer:(UIView *) gameView{
    self.gameView = gameView;
    
    self.playerImage = [UIImage imageNamed:@"blocky.png"];
    self.playerView = [[UIImageView alloc] initWithImage:self.playerImage];
    
    self.playerRect = CGRectMake(50,400, 32,32);
    self.playerView.frame = self.playerRect;
    
    [self.gameView addSubview:self.playerView];
    
    return self;
}

-(UIView *) getPlayerView{
    return self.playerView;
}

-(void) movePlayerRight{
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    if(self.playerRect.origin.x <= screenRect.size.width
       - self.playerRect.size.width - 10){
        self.playerRect = CGRectOffset(self.playerRect, +3, 0);
        self.playerView.frame = self.playerRect;
    }
}

-(void) movePlayerLeft{
    if(self.playerRect.origin.x >= 10){
        self.playerRect = CGRectOffset(self.playerRect, -3, 0);
        self.playerView.frame = self.playerRect;
    }
}

@end
