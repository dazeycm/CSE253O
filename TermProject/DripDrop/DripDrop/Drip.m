//
//  Drip.m
//  DripDrop
//
//  Created by Dazey, Craig Michael Jr. on 1/21/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import "Drip.h"

@implementation Drip

-(void) initWithxPos: (int)xPos yPos: (int)yPos view: (UIView*)gameView {
    self.xPos = xPos;
    self.yPos = yPos;
    self.gameView = gameView;
    self.speed = arc4random_uniform(5) + 1;
    
    self.dropImage = [UIImage imageNamed:@"drop.png"];
    self.dropView = [[UIImageView alloc]initWithImage:self.dropImage];
    self.dropRect = CGRectMake(self.xPos, self.yPos, 10, 20);
    self.dropView.frame = self.dropRect;
    [self.gameView addSubview:self.dropView];
}


@end
