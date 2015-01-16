//
//  ViewController.h
//  Activity7
//
//  Created by Dazey, Craig Michael Jr. on 1/16/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *display;

-(IBAction) clickDigit: (UIButton *) sender;
-(IBAction) clickPlus;
-(IBAction) clickMinus;
-(IBAction) clickEquals;
-(IBAction) clickClear;
-(IBAction) clickMultiply;



@end
