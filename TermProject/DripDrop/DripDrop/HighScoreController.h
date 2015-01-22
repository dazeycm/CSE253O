//
//  HighScoreController.h
//  DripDrop
//
//  Created by Dazey, Craig Michael Jr. on 1/22/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBManager.h"
#import "ScoreObject.h"

@interface HighScoreController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property NSArray* data;

@property (weak, nonatomic) IBOutlet UITableView *highScoreTable;

@end
