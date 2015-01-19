//
//  Book.m
//  examm2
//
//  Created by class on 1/19/15.
//  Copyright (c) 2015 class. All rights reserved.
//

#import "Book.h"

@implementation Book

@synthesize editor, numberOfPages;

-(void) printItem   {
    [super printItem];
    printf("***Pages\t\t%d", numberOfPages);
    printf("\n***Editor:\t\t%s\n", [editor UTF8String]);
}
@end
