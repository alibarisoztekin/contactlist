//
//  ContactList.m
//  Contact List
//
//  Created by Ali Barış Öztekin on 2017-02-07.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

-(void) addContact: (Contact*) newContact;
{
    [self.contactArray addObject:newContact];
}


@end
