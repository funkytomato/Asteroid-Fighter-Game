//
//  LHFrame.h
//  LevelHelper2-SpriteKit
//
//  Created by Bogdan Vladu on 22/04/14.
//  Copyright (c) 2014 GameDevHelper.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "cocos2d.h"

@class LHAnimationProperty;

@interface LHFrame : NSObject

+(instancetype)frameWithDictionary:(NSDictionary*)dict
                          property:(LHAnimationProperty*)prop;

-(instancetype)initFrameWithDictionary:(NSDictionary*)dict
                              property:(LHAnimationProperty*)prop;


-(void)setWasShot:(BOOL)val;
-(BOOL)wasShot;
-(int)frameNumber;
-(LHAnimationProperty*)property;

@end
