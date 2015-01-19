//
//  Journal.m
//  examm2
//
//  Created by class on 1/19/15.
//  Copyright (c) 2015 class. All rights reserved.
//

#import "Journal.h"

@implementation Journal

@synthesize journalName, volume, number;

-(void) printItem   {
    [super printItem];
    printf("***JournalName\t%s", [journalName UTF8String]);
    printf("\n***Volume:\t\t%d", volume);
    printf("\n***Number:\t\t%d\n", number);
}

@end
