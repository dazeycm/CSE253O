//
//  DBManager.h
//  DripDrop
//
//  Created by Dazey, Craig Michael Jr. on 1/22/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface DBManager : NSObject {
    NSString* dbPath;
    
}

+(DBManager*)getSharedInstance;
-(BOOL)createDB;
-(BOOL)storeName: (NSString*) name andScore: (int) score;
-(NSArray*)getTop10Scores;

@end
