//
//  Library.m
//  examm2
//
//  Created by class on 1/19/15.
//  Copyright (c) 2015 class. All rights reserved.
//

#import "Library.h"
#import "LibraryItem.h"

@implementation Library

@synthesize LibraryCollection;

-(void) printLibraryCollection  {
    for( NSString* key in LibraryCollection) {
        printf("***Author:\t\t%s\n", [key UTF8String]);
        [[LibraryCollection objectForKey:key] printItem];
        printf("\n");
    }
}
-(void) printLibraryCollectionWhereKeyIsSet {
    for(NSMutableSet* names in LibraryCollection)   {
        for(NSString* name in names)    {
            printf("***Author:\t\t%s\n", [name UTF8String]);
        }
        [[LibraryCollection objectForKey:names] printItem];
        printf("\n");

    }
}

@end
