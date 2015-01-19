//
//  LibraryItem.h
//  examm2
//
//  Created by class on 1/19/15.
//  Copyright (c) 2015 class. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LibraryItem : NSObject

@property NSString* title, *publisher;
@property int dateOfPublication;

-(void) setItemValues: (NSString*) newTitle: (NSString*) newPublisher: (int) newDateOfPublication;
-(void) printItem;

@end
