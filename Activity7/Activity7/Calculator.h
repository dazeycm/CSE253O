//
//  Calculator.h
//  Activity7
//
//  Created by Dazey, Craig Michael Jr. on 1/16/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

@property int operand1, operand2, answer;

-(int) performOperation: (char) op;
-(void) clear;

@end
