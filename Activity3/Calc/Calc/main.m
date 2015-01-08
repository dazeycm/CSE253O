//
//  main.m
//  Calc
//
//  Created by Dazey, Craig Michael Jr. on 1/8/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Calculator *deskCalc  = [[Calculator alloc] init];
		
        [deskCalc setAccumulator: 100.0];
        [deskCalc add: 200.];
        [deskCalc divide: 15.0];
        [deskCalc subtract: 10.0];
        [deskCalc multiply: 5];
        NSLog (@"The result is %g", [deskCalc accumulator]);
        [deskCalc clear];
		
        //Now add statements to the main program to calculate the expression (3.14159 * 4.0 * 4.0 -  150.75) / 34.6
        [deskCalc setAccumulator:3.14159];
        [deskCalc multiply:4.0];
        [deskCalc multiply:4.0];
        [deskCalc subtract:150.75];
        [deskCalc divide:34.6];
        NSLog (@"The result is %g", [deskCalc accumulator]);
        
    }
    return 0;
}
