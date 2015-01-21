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
    
}

-(void) makeDrop {
    int xPos = arc4random_uniform(280) + 10;
    int yPos = 20;
    
    UIImageView *dropView = [[UIImageView alloc]initWithImage:self.dropImage];
    dropView.frame = CGRectMake(xPos, yPos, 32, 32);
    [self.drops addObject:dropView];
    

}

@end
