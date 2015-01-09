//
//  Bank.m
//  Bank
//
//  Created by Dazey, Craig Michael Jr. on 1/9/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import "Bank.h"

@implementation Bank

@synthesize balance;

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

@end
