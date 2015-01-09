//
//  ParkingMeter.h
//  ParkingMeter
//
//  Created by Dazey, Craig Michael Jr. on 1/9/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#ifndef ParkingMeter_ParkingMeter_h
#define ParkingMeter_ParkingMeter_h

@interface ParkingMeter : NSObject

@property float cash;
@property int nickels, dimes, quarters;
@property int time;

-(bool) insertNickels: (int) num;
-(bool) insertDimes: (int) num;
-(bool) insertQuarters: (int) num;

-(float) emptyCash;

-(void) print;

-(bool) timePasses: (int) minutes;

@end

#endif
