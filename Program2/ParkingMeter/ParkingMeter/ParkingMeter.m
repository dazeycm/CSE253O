//
//  ParkingMeter.m
//  ParkingMeter
//
//  Created by Dazey, Craig Michael Jr. on 1/8/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//
//  TODO: If time > 90 set time to 90
#import <Foundation/Foundation.h>
#import "ParkingMeter.h"

@implementation ParkingMeter

@synthesize cash, nickels, dimes, quarters, time;

const static int MAXTIME = 90;

//if time > 90, sets time to 90
-(void) correctTime {
    if(time > MAXTIME)
        time = MAXTIME;
}
//returns true if num is >= 0
-(bool) biggerThanZero: (int) num  {
    if(num < 0)
        return false;
    else
        return true;
}
-(bool) insertNickels: (int) num    {
    if(![self biggerThanZero: num])
        return false;
    nickels += num;
    time += 10 * num;
    [self correctTime];
    cash += .05 * num;
    return true;
}

-(bool) insertDimes: (int) num  {
    if(![self biggerThanZero: num])
        return false;
    dimes += num;
    time += 20 * num;
    [self correctTime];
    cash += .1 * num;
    return true;
}

-(bool) insertQuarters: (int) num   {
    if(![self biggerThanZero: num])
        return false;
    quarters += num;
    time += 60 * num;
    [self correctTime];
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
    if(![self biggerThanZero: minutes])
        return false;
    time -= minutes;
    if(time <= 0) {
        time = 0;
        return false;
    }
    else
        return true;
}

@end
