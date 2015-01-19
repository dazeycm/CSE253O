//
//  Complex.h
//  Program4
//
//  Created by class on 1/19/15.
//  Copyright (c) 2015 class. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject

@property double real, imaginary;

-(void)         print;
-(void)         setTo: (int) n andImaginary: (int) d;
-(Complex *)    add: (Complex *) f;
-(Complex *)    subtract: (Complex *) f;
-(Complex *)    multiply: (Complex *) f;
-(Complex *)    divide: (Complex *) f;
-(NSString *)   convertToString;


@end
