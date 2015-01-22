//
//  Drip.h
//  DripDrop
//
//  Created by Dazey, Craig Michael Jr. on 1/21/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Drip : NSObject

@property int xPos, yPos, speed;
@property CGRect dropRect;
@property UIView* gameView;
@property UIImage* dropImage;
@property UIImageView *dropView;

-(void)initWithxPos: (int)xPos yPos: (int)yPos view: (UIView*)gameView;

@end
