//
//  BackgroundChooser.m
//  DripDrop
//
//  Created by Dazey, Craig Michael Jr. on 1/22/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import "BackgroundChooser.h"

static UIImage* currentImage;

@implementation BackgroundChooser

-(UIImage*) getNewBGImage   {
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://api.openweathermap.org/data/2.5/weather?q=London,uk"]];
    
    // Create url connection and fire request
    NSURLConnection *conn = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    
    [[NSRunLoop currentRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:5]];
    
    NSDictionary *jason = [self.derulo objectForKey:@"main"];
    
    double test = [[jason objectForKey: @"temp"] doubleValue];
    double farenheit = (test - 273.15)* 1.8000 + 32.00;
    
    UIImage* ret = [[UIImage alloc]init];
    if(farenheit < 0)    {
        ret = [UIImage imageNamed:@"arctic.jpg"];
    }
    else if (farenheit < 32) {
        ret = [UIImage imageNamed:@"cold.jpg"];
    }
    else if (farenheit < 75) {
        ret = [UIImage imageNamed:@"fall.jpg"];
    }
    else if (farenheit < 200)    {
        ret = [UIImage imageNamed:@"desert.jpg"];
    }
    
    currentImage = ret;
    return ret;
}

+ (UIImage*) image {
    return currentImage;
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    // A response has been received, this is where we initialize the instance var you created
    // so that we can append data to it in the didReceiveData method
    // Furthermore, this method is called each time there is a redirect so reinitializing it
    // also serves to clear it
    _responseData = [[NSMutableData alloc] init];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    // Append the new data to the instance variable you declared
    [_responseData appendData:data];
    NSError *error = nil;
    self.derulo = [NSJSONSerialization JSONObjectWithData:_responseData options:kNilOptions error:&error];
    
    if (error != nil) {
        NSLog(@"Error parsing JSON.");
    }
    NSLog(@"Array: %@", self.derulo);
}

- (NSCachedURLResponse *)connection:(NSURLConnection *)connection
                  willCacheResponse:(NSCachedURLResponse*)cachedResponse {
    // Return nil to indicate not necessary to store a cached response for this connection
    return nil;
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    // The request is complete and data has been received
    // You can parse the stuff in your instance variable now
    
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    // The request has failed for some reason!
    // Check the error var
}


@end
