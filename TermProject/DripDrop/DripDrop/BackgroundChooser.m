//
//  BackgroundChooser.m
//  DripDrop
//
//  Created by Dazey, Craig Michael Jr. on 1/22/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import "BackgroundChooser.h"

@implementation BackgroundChooser

-(void) getNewBGImage   {
    NSURL *url = [NSURL URLWithString:@"http://api.openweathermap.org/data/2.5/weather?q=London,uk"];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    [NSURLConnection connectionWithRequest:request delegate:self];
    
}

@end
