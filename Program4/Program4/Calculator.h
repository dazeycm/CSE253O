//
//  Calculator.h
//  Program4
//
//  Created by class on 1/19/15.
//  Copyright (c) 2015 class. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Complex.h"

@interface Calculator : NSObject

@property (strong, nonatomic) Complex *operand1;
@property (strong, nonatomic) Complex *operand2;
@property (strong, nonatomic) Complex *accumulator;

-(Complex*) performOperation: (char) op;
-(void) clear;

@end
