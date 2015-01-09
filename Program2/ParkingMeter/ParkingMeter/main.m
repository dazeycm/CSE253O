//
//  main.m
//  ParkingMeter
//
//  Created by Dazey, Craig Michael Jr. on 1/9/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ParkingMeter.h"

int getNumNickels()
{
    int num;
    printf( "Number of nickels:");
    scanf("%d", &num);
    return num;
}

int getNumDimes()
{
    int num;
    printf( "Number of dimes:");
    scanf("%d", &num);
    return num;
}

int getNumQuarters()
{
    int num;
    printf( "Number of quarters:");
    scanf("%d", &num);
    return num;
}

int getMinutes()
{
    int num;
    printf( "Number of minutes:");
    scanf("%d", &num);
    return num;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ParkingMeter* myParkingMeter = [[ParkingMeter alloc] init];
        int choice;
        int num;
        
        do {
            printf("Parking Meter Menu\n\n\t1. Deposit nickels\n\t2. Deposit dimes\n\t3. Deposit quarters");
            printf( "\n\t4. Print Data\n\t5. Time passes\n\t6. Empty meter\n\t7. Quit\n\n\tChoice:");
            scanf("%d", &choice);
            switch (choice) {
                case 1:
                    num = getNumNickels();
                    [myParkingMeter insertNickels: num];
                    break;
                case 2:
                    num = getNumDimes();
                    [myParkingMeter insertDimes: num];
                    break;
                case 3:
                    num = getNumQuarters();
                    [myParkingMeter insertQuarters: num];
                    break;
                case 4:
                    [myParkingMeter print];
                    break;
                case 5:
                    num = getMinutes();
                    [myParkingMeter timePasses: num];
                    break;
                case 6:
                    printf("Cash collected: $%3.2f\n\n", [myParkingMeter emptyCash]);
                    break;
                case 7:
                    printf("Goodbye!\n\n");
                    break;
                default:
                    printf("Invalid choice!\n");
            }
        } while (choice != 7);
        
    }
    return 0;
}
