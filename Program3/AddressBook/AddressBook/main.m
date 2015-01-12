//
//  main.m
//  AddressBook
//
//  Created by Dazey, Craig Michael Jr. on 1/12/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import <Foundation/Foundation.h>

NSMutableDictionary* myDict;

void initDict()    { //TODO: Read stuff in from a file
    FILE *file;
    file = fopen("/Users/dazeycm/Desktop/CSE253O/Program3/AddressBook/AddressBook/data.txt", "r");
    if(file == NULL)
        printf("It fucked up");
    myDict = [[NSMutableDictionary alloc]init];
}

void findData() { //TODO: Check to see if name is in dictionary
    printf("Enter a name: ");
    char name[20];
    scanf("%s", name);
    printf("***********************************************************\n\t\tEmail address: PUT SOMETHING HERE\n\t\tTelephone Number: PUT SOMETHING HERE\n***********************************************************\n");
    
}

bool addAddressData()  { //TODO: Add address to dictionary
    return true;
}

void editData()    { //TODO: Everything pretty much
    
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        int choice;
        initDict();
        do{
            printf("Address Book\n");
            printf("1. Find address data\n2. Add address data\n3. Edit address data\n4. Quit\n");
            printf("Enter your choice: ");
            scanf("%d", &choice);
            switch(choice)  {
                case 1:
                    findData();
                    break;
                case 2:
                    addAddressData();
                    break;
                case 3:
                    editData();
                    break;
                case 4:
                    printf("Adios!");
                    break;
                default:
                    printf("Invalid input!");
            }
        } while(choice != 4);
        
    }
    return 0;
}

