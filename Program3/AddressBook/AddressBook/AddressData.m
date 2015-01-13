//
//  AddressData.m
//  AddressBook
//
//  Created by Dazey, Craig Michael Jr. on 1/12/15.
//  Copyright (c) 2015 Dazey, Craig Michael Jr. All rights reserved.
//

#import "AddressData.h"

@implementation AddressData

@synthesize email, phone;

-(void) setEmail: (NSString*) newEmail andPhone: (NSString*) newPhone   {
    email = newEmail;
    phone = newPhone;
}

-(NSString*) description    {
    return [NSString stringWithFormat:@"Email: %@\nPhone: %@\n", email, phone];
}

@end
