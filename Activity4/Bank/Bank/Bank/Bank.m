//
//  Bank.m
//  Bank
//
//  Created by Dazey, Craig Michael Jr. on 1/9/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import "Bank.h"

@implementation Bank

@synthesize balance, accNum, name;

-(bool) withdraw: (float)amt    {
    if(amt > balance)
        return false;
    else{
        balance -= amt;
        return true;
    }
}
-(bool) deposit: (float)amt {
    balance += amt;
    return true;
}

-(void) print   {
    printf("Name: %s\nAccount number: %d\nBalance: %.2f\n", [name UTF8String], accNum, balance);
}

+(int) addX: (int)num to: (int)num2   {
    return num + num2;
}

@end
