//
//  Car.h
//  Exam1
//
//  Created by Dazey, Craig Michael Jr. on 1/12/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property NSString *make, *color;
@property int mileage, lastOilChange;

-(void) setMake: (NSString*) make andColor: (NSString*) color;
-(void) honkHorn;
-(bool) paintCar: (NSString*) newColor;
-(void) printData;
-(bool) needsOilChange;
-(void) changeOil;
-(void) drive: (int) milesDriven;

@end
