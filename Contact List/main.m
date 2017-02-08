//
//  main.m
//  Contact List
//
//  Created by Ali Barış Öztekin on 2017-02-07.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        while(YES){
            
            InputCollector* Prompt = [[InputCollector alloc] init];
            NSString* menuInput = [Prompt inputForPrompt:@"What would you like to do next?\n new - Create new contact\n list - List all contacts\n quit - Exit application\n"];
            if ([menuInput isEqualToString:@"quit"])
            {
                NSLog(@"Contact List bids you adieu");
                break;
            }
            else if([menuInput isEqualToString:@"new"])
            {
                Contact* newContact = [[Contact alloc] init];
                newContact.name = [Prompt inputForPrompt:@"Please enter contact name"];
                newContact.email = [Prompt inputForPrompt:@"Please enter contact email"];
                
            }
            
                
            
        }
    }
    return 0;
}
