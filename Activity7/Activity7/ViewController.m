//
//  ViewController.m
//  Activity7
//
//  Created by Dazey, Craig Michael Jr. on 1/16/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"

@implementation ViewController
{
    char                 op;
    BOOL                 firstOperand;
    int                  currentNumber;
    Calculator           *myCalculator;
    NSMutableString      *displayString;
}

@synthesize display;

- (void)viewDidLoad
{
    [super viewDidLoad];
    firstOperand = YES;
    displayString = [NSMutableString stringWithCapacity: 40];
    myCalculator = [[Calculator alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) clickDigit: (UIButton *) sender {
    currentNumber = (int) sender.tag;
    [displayString appendString:[NSString stringWithFormat: @"%i", currentNumber]];
    display.text = displayString;
    if (firstOperand) myCalculator.operand1 = currentNumber;
    else myCalculator.operand2 = currentNumber;
}

-(IBAction) clickPlus   {
    op = '+';
    NSString *opStr = @" + ";
    [displayString appendString: opStr];
    display.text = displayString;
    firstOperand = false;
}

-(IBAction) clickMinus  {
    op = '-';
    NSString *opStr = @" - ";
    [displayString appendString: opStr];
    display.text = displayString;
    firstOperand = false;
}

-(IBAction) clickMultiply  {
    op = '*';
    NSString *opStr = @" * ";
    [displayString appendString: opStr];
    display.text = displayString;
    firstOperand = false;
}

-(IBAction) clickEquals {
    if (firstOperand == false)
        
    {
        [myCalculator performOperation: op];
        [displayString appendString: @" = "];
        [displayString appendString: [NSString stringWithFormat:@"%d", myCalculator.answer]];
        display.text = displayString;
        currentNumber = 0;
        firstOperand = true;
        [displayString setString: @""];
    }
}
-(IBAction) clickClear  {
    firstOperand = YES;
    currentNumber = 0;
    [myCalculator clear];
    [displayString setString: @""];
    display.text = displayString;
}

@end
