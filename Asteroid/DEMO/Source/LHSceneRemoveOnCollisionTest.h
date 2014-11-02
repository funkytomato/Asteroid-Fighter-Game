//
//  LHSceneRemoveOnCollisionTest.h
//  LevelHelper2-Cocos2d-v3
//
//  Created by Bogdan Vladu on 15/05/14.
//  Copyright VLADU BOGDAN DANIEL PFA 2014. All rights reserved.
//
// -----------------------------------------------------------------------

// Importing cocos2d.h and cocos2d-ui.h, will import anything you need to start using cocos2d-v3
#import "cocos2d.h"
#import "cocos2d-ui.h"

#import "LHSceneDemo.h"

#if LH_USE_BOX2D

@interface LHSceneRemoveOnCollisionTest : LHSceneDemo

#else//chipmunk

@interface LHSceneRemoveOnCollisionTest : LHSceneDemo <CCPhysicsCollisionDelegate>

#endif

@end