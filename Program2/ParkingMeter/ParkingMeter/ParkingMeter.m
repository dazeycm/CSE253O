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


//  Returns false if time would exceed 90 minutes, and true otherwise
-(bool) insertNickels: (int) num    {
    if(time + 10 * num > 90)
        return false;
    nickels += num;
    time += 10 * num;
    cash += .05 * num;
    return true;
}

-(bool) insertDimes: (int) num  {
    if(time + 20 * num > 90)
        return false;
    dimes += num;
    time += 20 * num;
    cash += .1 * num;
    return true;
}

-(bool) insertQuarters: (int) num   {
    if(time + 60 * num > 90)
        return false;
    quarters += num;
    time += 60 * num;
    cash += .25 * num;
    return true;
}
//  Returns the amount of cash in the machine and then resets it
-(float) emptyCash  {
    float profit = cash;
    cash = 0;
    return profit;
}
//  Prints the amount of cash inserted in total, the remaining time, and how much money is currently in the machine
-(void) print   {
    printf("\tYou've inserted $%.2f\n\tYou have %d remaining minutes.\n\tThere is $%.2f currently in the machine\n\n", (nickels * .05 + dimes * .1 + quarters * .25), time, cash);
}
//  Returns true if there is still time on the meter, and false otherwise
-(bool) timePasses: (int) minutes   {
    time -= minutes;
    if(time <= 0) {
        time = 0;
        return false;
    }
    else
        return true;
}

@end
