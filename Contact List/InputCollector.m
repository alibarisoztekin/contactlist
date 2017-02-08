//
//  InputCollector.m
//  Contact List
//
//  Created by Ali Barış Öztekin on 2017-02-07.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString;
{
    NSLog(@"%@", promptString);
    char userInput[255];
    fgets(userInput, sizeof(userInput), stdin);
    
    NSString* userString = [NSString stringWithUTF8String:userInput];
    NSCharacterSet *charSet = [NSCharacterSet new];
    charSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    
    NSString* parsedString = [userString stringByTrimmingCharactersInSet:charSet];
    return parsedString;

}

@end
