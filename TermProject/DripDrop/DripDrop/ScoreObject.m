//
//  ScoreObject.m
//  DripDrop
//
//  Created by Dazey, Craig Michael Jr. on 1/22/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import "ScoreObject.h"

@implementation ScoreObject

-(void) setScore:(NSString *)score andName:(NSString *)name {
    self.name = name;
    self.score = score;
}

@end
