//
//  Drop.h
//  DripDrop
//
//  Created by Dazey, Craig Michael Jr. on 1/21/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Drop : NSObject

@property UIView* gameView;
@property UIImage* dropImage;
@property NSMutableArray* drops;

-(void) startDrops: (UIView*) gameView;
-(void) makeDrop;

@end
