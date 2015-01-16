//
//  Calculator.m
//  Activity7
//
//  Created by Dazey, Craig Michael Jr. on 1/16/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

@synthesize operand1, operand2, answer;

-(int) performOperation: (char) op  {
    int result;
    switch(op)  {
        case '+': result = operand1 + operand2; break;
        case '-': result = operand1 - operand2; break;
    }
    return result;

}
-(void) clear   {
    answer = 0;
}


@end
