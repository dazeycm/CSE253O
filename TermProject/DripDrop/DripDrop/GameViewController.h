//
//  GameViewController.h
//  DripDrop
//
//  Created by Dazey, Craig Michael Jr. on 1/21/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GameViewController : UIViewController
@property CGRect playerRect;
@property (strong) UIImage *playerImage;
@property (strong) UIImageView *playerView;
@property (strong) NSTimer *moveTimer;

- (IBAction)moveLeft:(id)sender;
- (IBAction)moveRight:(id)sender;

- (IBAction)TouchRelease:(id)sender;


@end
