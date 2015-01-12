//
//  Car.m
//  Exam1
//
//  Created by Dazey, Craig Michael Jr. on 1/12/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import "Car.h"

@implementation Car

@synthesize make, color, mileage, lastOilChange;

-(void) setMake: (NSString*) newMake andColor: (NSString*) newColor   {
    make = newMake;
    color = newColor;
}
-(void) honkHorn    {
    printf("Beep Beep\n");
}
-(bool) paintCar: (NSString*) newColor {
    if([color isEqualToString: newColor]) {
        printf("Your car is already that color!\n");
        return false;
    } else  {
        color = newColor;
        return true;
    }
}
-(void) printData   {
    printf("Make: %s\nColor: %s\nMileage: %d\nLast Oil Change: %d\n\n", [make UTF8String], [color UTF8String], mileage, lastOilChange);
}
-(bool) needsOilChange  {
    if(mileage - lastOilChange >= 10000) {
        return true;
    }
    else
        return false;
}
-(void) changeOil   {
    lastOilChange = mileage;
}
-(void) drive: (int) milesDriven{
    mileage += milesDriven;
}

@end
