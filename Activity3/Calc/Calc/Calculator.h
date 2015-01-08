//
//  Calculator.h
//  Calc
//
//  Created by Dazey, Craig Michael Jr. on 1/8/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#ifndef Calculator_Calculator_h
#define Calculator_Calculator_h

#import <Foundation/Foundation.h>

@interface Calculator: NSObject

@property double accumulator;

// accumulator methods
-(void)   clear;

// arithmetic methods
-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;
@end

#endif