//
//  Player.h
//  Snakes and Ladders
//
//  Created by Carlo Namoca on 2017-10-07.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic) NSInteger currentSquare;
@property (nonatomic) NSDictionary *gameLogic;
@property (nonatomic) NSString *output;
@property (nonatomic) BOOL gameOver;

-(void) roll;

@end
