//
//  Drop.h
//  DripDrop
//
//  Created by Dazey, Craig Michael Jr. on 1/21/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Drop : NSObject

@property UIView* gameView;
@property NSMutableArray* drops;
@property NSTimer* makeDropsTimer;
@property NSTimer* moveDropsTimer;

-(Drop*) startDrops: (UIView*) gameView;
-(void) makeDrop;
-(void) moveDrops;

@end
