//
//  Drop.m
//  DripDrop
//
//  Created by Dazey, Craig Michael Jr. on 1/21/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import "Drop.h"
#import "Drip.h"

@implementation Drop

-(Drop*) startDrops: (UIView*) gameView  {
    self.gameView = gameView;
    self.drops = [[NSMutableArray alloc]init];
    self.makeDropsTimer = [NSTimer scheduledTimerWithTimeInterval:1
                                                         target:self
                                                       selector:@selector(makeDrop)
                                                       userInfo:nil
                                                        repeats:YES];
    self.moveDropsTimer = [NSTimer scheduledTimerWithTimeInterval:.03
                                                           target:self
                                                         selector:@selector(moveDrops)
                                                         userInfo:nil
                                                          repeats:YES];
    return self;
}

-(void) makeDrop {
    int xPos = arc4random_uniform(280) + 10;
    
    Drip* newDrip = [[Drip alloc] init];
    [newDrip initWithxPos:xPos yPos:10 view:self.gameView];
    
    [self.drops addObject:newDrip];

}

-(void) moveDrops   {
    for(int i=0;i< self.drops.count; i++){
        Drip* drip = self.drops[i];
        drip.dropRect = CGRectOffset(drip.dropRect, 0, 3);
        drip.dropView.frame = drip.dropRect;
    }
    
}
@end
