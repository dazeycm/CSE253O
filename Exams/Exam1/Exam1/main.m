//
//  main.m
//  Exam1
//
//  Created by Dazey, Craig Michael Jr. on 1/12/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Car *myCar = [[Car alloc]init];
        [myCar setMake: @"Acura"];
        [myCar setColor: @"Red"];
        [myCar setMileage: 5000];
        [myCar setLastOilChange: 0];
        
        [myCar printData];
        [myCar drive: 5000];
        [myCar printData];
        
        if([myCar needsOilChange])
            printf("Change oil right away!\n\n");
        [myCar changeOil];
        [myCar printData];
        [myCar drive: 5000];
        
        if([myCar needsOilChange])
            printf("Change oil right away!\n");
        [myCar honkHorn];
        
        int numCars;
        printf("Enter a number of cars: ");
        scanf("%d", &numCars);
        Car* cars[numCars];
        for(int i = 0; i < numCars; i++)    {
            printf("Make: ");
            char make[20];
            scanf("%s", make);
            
            printf("Color: ");
            char color[20];
            scanf("%s", color);
            printf("\n");
            
            Car *newCar = [[Car alloc]init];
            [newCar setMileage:0];
            [newCar setLastOilChange:0];
            [newCar setMake: [NSString stringWithUTF8String:make] andColor:[NSString stringWithUTF8String:color]];
            cars[i] = newCar;
        }
        for(int i = 0; i < numCars; i++)    {
            [cars[i] drive: i * 1000];
        }
        for(int i = 0; i < numCars; i++)    {
            [cars[i] printData];
        }
        
        
        
        
        
    }
    return 0;
}

