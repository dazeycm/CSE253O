//
//  Drop.m
//  DripDrop
//
//  Created by Dazey, Craig Michael Jr. on 1/21/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import "Drop.h"

@implementation Drop

-(void) startDrops: (UIView*) gameView  {
    self.gameView = gameView;
    self.dropImage = [UIImage imageNamed:@"drop.png"];
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

}

-(void) makeDrop {
    int xPos = arc4random_uniform(280) + 10;
    int yPos = 10;
    
    UIImageView *dropView = [[UIImageView alloc]initWithImage:self.dropImage];
    dropView.frame = CGRectMake(xPos, yPos, 10, 20);
    
    [self.drops addObject:dropView];
    [self.gameView addSubview:dropView];

}

-(void) moveDrops   {
    for(int i=0;i< self.drops.count; i++){
        UIImageView* dropView = self.drops[i];
        int yPos = dropView.frame.origin.y + 3;
        dropView.frame = CGRectMake(dropView.frame.origin.x, yPos, 10, 20);
        
        //add the new enemy to the game view
        [self.gameView addSubview:dropView];
    }
    
}
@end
