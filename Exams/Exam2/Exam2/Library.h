//
//  Library.h
//  examm2
//
//  Created by class on 1/19/15.
//  Copyright (c) 2015 class. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Library : NSObject

@property NSMutableDictionary* LibraryCollection;

-(void) printLibraryCollection;

-(void) printLibraryCollectionWhereKeyIsSet;

@end
