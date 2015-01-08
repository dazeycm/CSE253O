//
//  ParkingMeter.m
//  ParkingMeter
//
//  Created by Dazey, Craig Michael Jr. on 1/8/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import "ParkingMeter.h"

@implementation ParkingMeter

@synthesize cash, nickels, dimes, quarters, time;

-(bool) insertNickels: (int) num    {
    nickels += num;
    time += 10 * num;
    cash += .05 * num;
    return true;
}

-(bool) insertDimes: (int) num  {
    dimes += num;
    time += 20 * num;
    cash += .1 * num;
    return true;
}

-(bool) insertQuarters: (int) num   {
    quarters += num;
    time += 60 * num;
    cash += .25 * num;
    return true;
}

-(float) emptyCash  {
    float profit = cash;
    cash = 0;
    return profit;
}

-(void) print   {
    printf("\tYou've inserted $%.2f and have %d remaining minutes.\n", (nickels * .05 + dimes * .1 + quarters * .25), time);
}

-(bool) timePasses: (int) minutes   {
    time -= minutes;
    if(minutes > 0)
        return true;
    else
        return false;
}

@end
