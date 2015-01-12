//
//  main.m
//  AddressBook
//
//  Created by Dazey, Craig Michael Jr. on 1/12/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import <Foundation/Foundation.h>

NSMutableDictionary *inputData()    {
    NSMutableDictionary *myDict;
    return myDict;
}

void findData(NSMutableDictionary *dict) { //TODO: Check to see if name is in dictionary
    printf("Enter a name: ");
    char name[20];
    scanf("%s", name);
    printf("***********************************************************\n\t\tEmail address: PUT SOMETHING HERE\n\t\tTelephone Number: PUT SOMETHING HERE\n***********************************************************\n");
    
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        int choice;
        NSMutableDictionary *myDict = inputData();
        do{
            printf("Address Book\n");
            printf("1. Find address data\n2. Add address data\n3. Edit address data\n4. Quit\n");
            printf("Enter your choice: ");
            scanf("%d", &choice);
            switch(choice)  {
                case 1:
                    findData(myDict);
                    break;
                case 2:
                    break;
                case 3:
                    break;
                case 4:
                    break;
                default:
                    printf("Invalid input!");
            }
        } while(choice != 4);
        
    }
    return 0;
}

