//
//  DBManager.m
//  DripDrop
//
//  Created by Dazey, Craig Michael Jr. on 1/22/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import "DBManager.h"

static DBManager *sharedInstance = nil;
static sqlite3 *database = nil;
static sqlite3_stmt *statement = nil;

@implementation DBManager

+(DBManager*)getSharedInstance{
    if (!sharedInstance) {
        sharedInstance = [[super allocWithZone:NULL]init];
        [sharedInstance createDB];
    }
    return sharedInstance;
}

-(BOOL)createDB{
    NSString *docsDir;
    NSArray *dirPaths;
    // Get the documents directory
    dirPaths = NSSearchPathForDirectoriesInDomains
    (NSDocumentDirectory, NSUserDomainMask, YES);
    docsDir = dirPaths[0];
    // Build the path to the database file
    dbPath = [[NSString alloc] initWithString:
                    [docsDir stringByAppendingPathComponent: @"score.db"]];
    BOOL isSuccess = YES;
    NSFileManager *filemgr = [NSFileManager defaultManager];
    if ([filemgr fileExistsAtPath: dbPath ] == NO)
    {
        const char *dbpath = [dbPath UTF8String];
        if (sqlite3_open(dbpath, &database) == SQLITE_OK)
        {
            char *errMsg;
            const char *sql_stmt = "CREATE TABLE Scores(Id INTEGER PRIMARY KEY AUTOINCREMENT, Name VARCHAR(50) NOT NULL, Score INTEGER NOT NULL);";
            if (sqlite3_exec(database, sql_stmt, NULL, NULL, &errMsg)
                != SQLITE_OK)
            {
                isSuccess = NO;
                NSLog(@"Failed to create table");
            }
            sqlite3_close(database);
            return  isSuccess;
        }
        else {
            isSuccess = NO;
            NSLog(@"Failed to open/create database");
        }
    }
    return isSuccess;
}

-(BOOL)storeName:(NSString *)name andScore:(int)score   {
    const char *dbpath = [dbPath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        NSString *insertSQL = [NSString stringWithFormat:@"INSERT INTO Scores (Name, Score) values(\"%@\",\"%d\");", name, score];
                                const char *insert_stmt = [insertSQL UTF8String];
        sqlite3_prepare_v2(database, insert_stmt,-1, &statement, NULL);
        if (sqlite3_step(statement) == SQLITE_DONE) {
            return YES;
        }
        else {
           return NO;
        }
        sqlite3_reset(statement);
    }
    return NO;
}

-(NSArray*) getTop10Scores  {
    const char *dbpath = [dbPath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)   {
        NSString *querySQL = @"SELECT Name, Score FROM Scores ORDER BY Score DESC LIMIT 8;";
        const char *query_stmt = [querySQL UTF8String];
        NSMutableArray *resultArray = [[NSMutableArray alloc]init];
        if (sqlite3_prepare_v2(database, query_stmt, -1, &statement, NULL) == SQLITE_OK)    {
            while (sqlite3_step(statement) == SQLITE_ROW)   {
                NSString *name = [[NSString alloc] initWithUTF8String: (const char *) sqlite3_column_text(statement, 0)];
                [resultArray addObject:name];
                NSString *score = [[NSString alloc] initWithUTF8String: (const char *) sqlite3_column_text(statement, 1)];
                [resultArray addObject:score];
            }
            sqlite3_reset(statement);
            return resultArray;
        }
    }
    return nil;
}



@end
