//
//  Complex.m
//  Program4
//
//  Created by class on 1/19/15.
//  Copyright (c) 2015 class. All rights reserved.
//

#import "Complex.h"
#import <math.h>

@implementation Complex

@synthesize real, imaginary;

-(void)         print   {
    printf("%.2f + %.2fi", real, imaginary);
}
-(void)         setTo: (int) r andImaginary: (int) i    {
    real = r;
    imaginary = i;
}
-(Complex *)    add: (Complex *) c {
    Complex* result = [[Complex alloc]init];
    result.real = self.real + c.real;
    result.imaginary = self.imaginary + c.imaginary;
    return result;
}
-(Complex *)    subtract: (Complex *) c{
    Complex* result = [[Complex alloc]init];
    result.real = self.real - c.real;
    result.imaginary = self.imaginary - c.imaginary;
    return result;
}
-(Complex *)    multiply: (Complex *) c {
    Complex* result = [[Complex alloc]init];
    result.real = ((self.real * c.real) - (self.imaginary * c.imaginary));
    result.imaginary = ((self.real * c.imaginary) + (self.imaginary * c.real));
    return result;
}
-(Complex *)    divide: (Complex *) c   {
    Complex* result = [[Complex alloc]init];
    result.real = ((self.real * c.real) + (self.imaginary * c.imaginary)) / (pow(c.real,2) + pow(c.imaginary, 2));
    result.imaginary = ((self.imaginary * c.real) - (self.real * c.imaginary)) / (pow(c.real,2) + pow(c.imaginary, 2));
    return result;
}
-(NSString *)   convertToString {
    NSString* ret = [NSString stringWithFormat:@"%.2f + %.2fi", real, imaginary];
    return ret;
}

@end
