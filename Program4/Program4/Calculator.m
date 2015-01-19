//
//  Calculator.m
//  Program4
//
//  Created by class on 1/19/15.
//  Copyright (c) 2015 class. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

@synthesize operand1, operand2, accumulator;

-(id) init
{
    self = [super init];
    
    if (self) {
        operand1 = [[Complex alloc] init];
        operand2 = [[Complex alloc] init];
        accumulator = [[Complex alloc] init];
    }
    
    return self;
}


-(void) clear
{
    accumulator.real = 0;
    accumulator.imaginary = 0;
}


-(Complex *) performOperation: (char) op
{
    Complex *result;
    
    switch (op) {
        case '+':
            result = [operand1 add: operand2];
            break;
        case '-':
            result = [operand1 subtract: operand2];
            break;
        case '*':
            result = [operand1 multiply: operand2];
            break;
        case '/':
            result = [operand1 divide: operand2];
            break;
    }
    
    accumulator.real = result.real;
    accumulator.imaginary = result.imaginary;
    
    return accumulator;
}


@end
