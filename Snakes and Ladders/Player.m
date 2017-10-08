//
//  Player.m
//  Snakes and Ladders
//
//  Created by Carlo Namoca on 2017-10-07.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _gameLogic = NO;
        
        _gameLogic = [[NSDictionary alloc]initWithObjectsAndKeys:
                      @14, @4,
                      @31, @9,
                      @38, @20,
                      @84, @28,
                      @59, @40,
                      @67, @51,
                      @81, @63,
                      @7, @17,
                      @60, @64,
                      @26, @89,
                      @73, @95,
                      @78, @99,nil];
        
        
       
        _currentSquare = 0;
        NSLog(@"You're currently at %ld", (long)_currentSquare);
        
    }
    return self;
}

-(void) roll
{
    int x = arc4random_uniform(6)+1;
    NSLog(@"You rolled %i", x);
    
    self.currentSquare = self.currentSquare + x;
    if ([self.gameLogic objectForKey:[[NSNumber alloc]initWithInteger:self.currentSquare]])
         {
             NSInteger a = [self.gameLogic [[[NSNumber alloc] initWithInt:(int)self.currentSquare]] integerValue];
             if (a < self.currentSquare)
             {
                 self.output = [NSString stringWithFormat: @"SNAKE! You slide down from %ld to %ld", self.currentSquare, a];
             } else {
                 self.output = [NSString stringWithFormat: @"STAIRWAY TO HEAVEN! You go up the ladder from %ld to %ld", self.currentSquare, a];
             }
             self.currentSquare = a;
         }else if (self.currentSquare >= 100)
         {
             self.output = [NSString stringWithFormat:@"YOU WIN!!!"];
             self.gameOver = YES;
         } else {
             self.output = [NSString stringWithFormat: @"You're currently on %ld", self.currentSquare];
         }
    
    
}


@end
