//
//  ViewController.h
//  Program4
//
//  Created by class on 1/19/15.
//  Copyright (c) 2015 class. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *display;

-(IBAction) clickDigit: (UIButton *) sender;

-(IBAction) clickPlus;
-(IBAction) clickMultiply;
-(IBAction) clickDivide;
-(IBAction) clickMinus;

-(IBAction) clickImaginary;
-(IBAction) clickEquals;
-(IBAction) clickClear;

@end
