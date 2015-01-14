//
//  main.m
//  AddressBook
//
//  Created by Dazey, Craig Michael Jr. on 1/12/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//
//  Purpose: Practice using ObjC container classes to develop an address book
//
//  Below you'll see a removeNewLine function I made to take care of the new line problem when using fgets
//  However, I think it's easier to convert the user input into an NSString first (which I'd do anyways to store it in the addressdata)
//  and then you can use replace method of NSString which is stringByReplacingOccurenceOfString: withString which is a lot nicer I think

#import <Foundation/Foundation.h>
#import "AddressData.h"

NSMutableDictionary* myDict;

//  Old new line removal method
//NSString* removeNewLine(NSString* input)   {
//    char* str = (char*)[input UTF8String];
//    long i = strlen(str)-1;
//    if( str[i] == '\n')
//        str[i] = '\0';
//    input = [NSString stringWithUTF8String:str];
//    return input;
//}

//  Reads in info from the file, and places it in the dictionary
void initDict()    {
    FILE *file;
    myDict = [[NSMutableDictionary alloc]init];
    file = fopen("/Users/dazeycm/Desktop/CSE253O/Program3/AddressBook/AddressBook/data.txt", "r");
    if(file == NULL)    {
        printf("Failed to open file");
        return;
    }
    
    char str[80];
    while (!feof(file))  {  //Check end of file
        fgets(str, 80, file);
        
        //split the input string on ","
        NSArray* parts = [[NSString stringWithUTF8String: str] componentsSeparatedByString:@","];
        AddressData* data = [[AddressData alloc]init];
        
        NSString* name = [parts objectAtIndex:0];
        NSString* email = [parts objectAtIndex:1];
        NSString* tele = [parts objectAtIndex:2];
        tele = [tele stringByReplacingOccurrencesOfString:@"\n" withString:@""];    //New newline removal method
        
        [data setEmail: email andPhone: tele];
        [myDict setObject:data forKey:name];
    }
}

void findData() {
    printf("Enter a name: ");
    char userName[20];
    fgets(userName, 20, stdin);
    NSString* name = [[NSString stringWithUTF8String:userName] stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    
    // returns true if the object was found in the dictionary
    if ([myDict objectForKey:name])  {
        AddressData* data = [myDict objectForKey:name];
        printf("***********************************************************\n\t\tEmail address: %s\n\t\tTelephone Number: %s\n***********************************************************\n", [[data email] UTF8String], [[data phone] UTF8String]);
    }
    else    {
        printf("Error: User not found\n");
    }
}

void addAddressData()  {
    printf("Enter a name: ");
    char userName[20];
    fgets(userName, 20, stdin);
    NSString* name = [[NSString stringWithUTF8String:userName] stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    
    if ([myDict objectForKey:name]) {
        printf("Error: Name in address book!\n");
        return;
    }
    
    printf("Enter an email: ");
    char userEmail[50];
    fgets(userEmail, 50, stdin);
    NSString* email = [[NSString stringWithUTF8String:userEmail] stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    
    printf("Enter a telephone: ");
    char userTele[20];
    fgets(userTele, 20, stdin);
    NSString* tele = [[NSString stringWithUTF8String:userTele] stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    
    AddressData* dataForDict  = [[AddressData alloc]init];
    [dataForDict setEmail:email andPhone:tele];
    
    [myDict setObject:dataForDict forKey:name];
}

void editData()    {
    printf("Enter a name: ");
    char userName[20];
    fgets(userName, 20, stdin);
    NSString* name = [[NSString stringWithUTF8String:userName] stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    
    if ([myDict objectForKey:name]) {
        printf("Enter an email: ");
        char userEmail[50];
        fgets(userEmail, 50, stdin);
        NSString* email = [[NSString stringWithUTF8String:userEmail] stringByReplacingOccurrencesOfString:@"\n" withString:@""];
        
        printf("Enter a telephone: ");
        char userTele[20];
        fgets(userTele, 20, stdin);
                NSString* tele = [[NSString stringWithUTF8String:userTele] stringByReplacingOccurrencesOfString:@"\n" withString:@""];
        
        AddressData* dataForDict  = [[AddressData alloc]init];
        [dataForDict setEmail:email andPhone:tele];
        
        //Remove old key value pair and insert new one
        //May not have to remove old key value, you could just overwrite it, however the documentation wasn't clear
        [myDict removeObjectForKey:name];
        [myDict setObject:dataForDict forKey:name];
    }
    else
        printf("Error: Name not found!");
    
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        initDict();
        int choice;
        do{
            printf("Address Book\n");
            printf("1. Find address data\n2. Add address data\n3. Edit address data\n4. Quit\n");
            printf("Enter your choice: ");
            char number[50];
            fgets(number, 50, stdin);
            choice = atoi(number);  //converts chars to an int, returns 0 if it fails which would go to default, so it's safe
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
                    printf("Adios!\n");
                    break;
                default:
                    printf("Invalid input!\n");
            }
        } while(choice != 4);
        
    }
    return 0;
}

