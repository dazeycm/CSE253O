//
//  ViewController.m
//  Program4
//
//  Created by Craig Dazey on 1/19/15.
//  Copyright (c) 2015 class. All rights reserved.
//
//

#import "ViewController.h"
#import "Calculator.h"

@implementation ViewController  {
    int currentNumber;
    NSMutableString* displayString;
    char op;
    BOOL firstOperand;
    BOOL isComplex;
    Calculator* myCalculator;
}

@synthesize display;

-(void) processDigit: (int) digit
{
    currentNumber = currentNumber * 10 + digit;
   
    [displayString appendString:
     [NSString stringWithFormat: @"%d", digit]];
    
    display.text = displayString;
}

- (IBAction) clickDigit: (UIButton *) sender
{
    int digit = sender.tag;
    
    [self processDigit: digit];
}

-(void) processOp: (char) theOp
{
    if(isComplex)  {
        NSString *opStr;
    
        op = theOp;
    
        switch (theOp) {
            case '+':
                opStr = @" + ";
                break;
            case '-':
                opStr = @" – ";
                break;
            case '*':
                opStr = @" × ";
                break;
            case '/':
                opStr = @" ÷ ";
                break;
        }

        
        firstOperand = NO;
        isComplex = NO;
    
        [displayString appendString: opStr];
        display.text = displayString;
        
        }
    else{
        [self storePart];
        [displayString appendString: @" + "];
        display.text = displayString;
    }
}

-(void) storePart
{
    if (firstOperand) {
        if (isComplex) {
            myCalculator.operand1.imaginary = currentNumber;
        }
        else    {
            myCalculator.operand1.real = currentNumber;
            myCalculator.operand1.imaginary = 0;
        }
    }
    else{
        if(isComplex)   {
             myCalculator.operand2.imaginary = currentNumber;
        }
        else    {
            myCalculator.operand2.real = currentNumber;
            myCalculator.operand2.imaginary = 0;
        }
    }
    currentNumber = 0;
}

-(IBAction) clickImaginary
{
    isComplex = YES;
    [self storePart];
    [displayString appendString: @"i"];
    display.text = displayString;
}

             
-(IBAction) clickPlus
{
    [self processOp: '+'];
}
             
-(IBAction) clickMinus
{
    [self processOp: '-'];
}
             
-(IBAction) clickMultiply
{
    [self processOp: '*'];
}
             
-(IBAction) clickDivide
{
    [self processOp: '/'];
}

-(IBAction) clickEquals
{
    if ( firstOperand == NO ) {
        [myCalculator performOperation: op];
        
        [displayString appendString: @" = "];
        [displayString appendString: [myCalculator.accumulator
                                      convertToString]];
        display.text = displayString;
        
        currentNumber = 0;
        isComplex = NO;
        firstOperand = YES;
        [displayString setString: @""];
    }
}

-(IBAction) clickClear
{
    isComplex = NO;
    firstOperand = YES;
    currentNumber = 0;
    [myCalculator clear];
    
    [displayString setString: @""];
    display.text = displayString;
}

- (void)viewDidLoad
{
    firstOperand = YES;
    isComplex = NO;
    displayString = [NSMutableString stringWithCapacity: 40];
    myCalculator = [[Calculator alloc] init];
    myCalculator.operand1.real = 0;
    myCalculator.operand1.imaginary = 0;
    myCalculator.operand2.real = 0;
    myCalculator.operand2.imaginary = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
