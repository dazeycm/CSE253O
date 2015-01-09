//
//  Bank.h
//  Bank
//
//  Created by Dazey, Craig Michael Jr. on 1/9/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Bank : NSObject

@property float balance;

-(bool) withdraw: (float)amt;
-(bool) deposit: (float)amt;

@end
