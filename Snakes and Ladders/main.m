//
//  main.m
//  Snakes and Ladders
//
//  Created by Carlo Namoca on 2017-10-07.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        
        
        BOOL gameON = TRUE;
        NSLog(@"WELCOME TO SNAKES AND LADDERS!");
        NSLog(@"WOULD YOU LIKE TO ~roll~?");
        Player *newPlayer = [[Player alloc]init];
        
        while (gameON)
        {
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            if ([inputString isEqualToString:@"roll"] || [inputString isEqualToString:@"r"]){
                [newPlayer roll];
            } NSLog (@"%@", [newPlayer output]);
            
          if ([newPlayer gameOver] == YES)
          {
              gameON = FALSE;
              NSLog(@"Thanks for playing!");
          }
        }
    }
    return 0;
}
