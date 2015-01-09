//
//  main.m
//  Bank
//
//  Created by Dazey, Craig Michael Jr. on 1/9/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bank.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Bank *myBank = [[Bank alloc]init];
        [myBank deposit: 100.0];
        if(![myBank withdraw: 150.0])
            printf("You cannot withdraw more than the balance\n");
        
        printf("Current Balance: $%3.2f\n", [myBank balance]);
        
    }
    return 0;
}

