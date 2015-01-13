//
//  main.m
//  Activity5
//
//  Created by Dazey, Craig Michael Jr. on 1/12/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//
//  Write an Objective-C program to learn about NSString methods.
//
//  1. Read in a C-string using scanf and convert this to an NSString.
//
//  2. Print out the length of this NSString.
//
//  3. Change this NSString to all capital letters, and print this out.
//
//  4. Print out the number of vowels in this NSString.
//
//  5. Now read in another C string that represents a person's name: first name followed by last name.
//
//  6. Now find the location of the space that is between the first and last names and use this location to copy the last name into about variable. Print out the last name.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        char cString[20];
        printf("Enter a string: ");
        scanf("%s", cString);
        NSString* objcString = [NSString stringWithUTF8String: cString];
        
        printf("Length of string:  %d\n", (int)[objcString length]);
        
        NSString* capsString = [objcString uppercaseString];
        printf("%s\n", [capsString UTF8String]);
        
        int count = 0;
        for(int i = 0; i < [capsString length]; i++)    {
            char curChar = [capsString characterAtIndex:i];
            if (curChar == 'A' || curChar == 'E' || curChar == 'I' || curChar == 'O' || curChar == 'U')
                count++;
        }
        printf("Found %d vowels\n", count);
        
        printf("Enter a name: ");
        char str[20];
        fgets(str, 20, stdin);
        fgets(str, 20, stdin);
        NSString* newStr = [NSString stringWithUTF8String:str];
        NSArray* parts = [newStr componentsSeparatedByString:@" "];
        NSString* lastName = [parts objectAtIndex:1];
        printf("Last name: %s", [lastName UTF8String]);
        
        
    }
    return 0;
}

