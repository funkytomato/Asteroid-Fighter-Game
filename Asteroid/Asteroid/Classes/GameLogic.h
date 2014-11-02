//
//  GameLogic.h
//  Asteroid
//
//  Created by Jason Fry on 02/11/2014.
//  Copyright (c) 2014 VLADU BOGDAN DANIEL PFA. All rights reserved.
//


// Importing cocos2d.h and cocos2d-ui.h, will import anything you need to start using cocos2d-v3
#import "cocos2d.h"
#import "cocos2d-ui.h"

#import "LevelHelper2API.h"

@interface GameLogic : LHScene

// -----------------------------------------------------------------------

+ (GameLogic *)scene;
- (id)initWithContentOfFile:(NSString *)levelPlistFile;

// -----------------------------------------------------------------------
@end
