//
//  LibraryItem.m
//  examm2
//
//  Created by class on 1/19/15.
//  Copyright (c) 2015 class. All rights reserved.
//

#import "LibraryItem.h"

@implementation LibraryItem

@synthesize title, publisher, dateOfPublication;

-(void) setItemValues: (NSString*) newTitle: (NSString*) newPublisher: (int) newDateOfPublication   {
    title = newTitle;
    publisher = newPublisher;
    dateOfPublication = newDateOfPublication;
}

-(void) printItem   {
    printf("***Title:\t\t%s", [title UTF8String]);
    printf("\n***Publisher:\t%s", [publisher UTF8String]);
    printf("\n***Date:\t\t%d\n", dateOfPublication);
}

@end
