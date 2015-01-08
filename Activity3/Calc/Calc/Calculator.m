//
//  Calculator.m
//  Calc
//
//  Created by Dazey, Craig Michael Jr. on 1/8/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

@synthesize accumulator;

// accumulator methods
-(void)   clear {
    accumulator = 0;
}


// arithmetic methods
-(void) add: (double) value {
    accumulator += value;
}
-(void) subtract: (double) value    {
    accumulator -= value;
}
-(void) multiply: (double) value    {
    accumulator *= value;
}
-(void) divide: (double) value  {
    accumulator /= value;
}

@end
