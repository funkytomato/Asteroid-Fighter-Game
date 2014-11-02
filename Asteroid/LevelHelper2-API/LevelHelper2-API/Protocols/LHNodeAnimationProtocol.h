//
//  LHNodeAnimationProtocol.h
//  LevelHelper2-Cocos2d-V3
//
//  Created by Bogdan Vladu on 22/04/14.
//  Copyright (c) 2014 GameDevHelper.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

/**
 LevelHelper 2 nodes that can be animated conform to this protocol.
 */

@class LHAnimation;

@protocol LHNodeAnimationProtocol <NSObject>

@required

/**
 Set the active animation on a node.
 @param animation The animation that is about to get activated.
 */
-(void)setActiveAnimation:(LHAnimation*)animation;

/**
 Returns the active animation on a node or nil if no active animation.
 */
-(LHAnimation*)activeAnimation;


/**
 Returns the animation with a given name or nil if no animation with the specified name is found on the node.
 @param animName The name of the animation that you want returned.
 */
-(LHAnimation*)animationWithName:(NSString*)animName;


/**
 Set position on the node controlled by the animation.
 @param point A point value.
 */
-(void)setPosition:(CGPoint)point;

/**
 Set rotation on the node controlled by the animation.
 @param degrees A rotation value in degrees.
 */
-(void)setRotation:(float)degrees;

/**
 Set x scale on the node controlled by the animation.
 @param xScale A scale value for the x axis.
 */
-(void)setScaleX:(float)xScale;

/**
 Set y scale on the node controlled by the animation.
 @param yScale A scale value for the y axis.
 */
-(void)setScaleY:(float)yScale;

/**
 Set opacity on the node controlled by the animation.
 @param opacity A opacity value between 0 and 1.
 */
-(void)setOpacity:(float)opacity;

@end


@interface LHNodeAnimationProtocolImp : NSObject

+ (instancetype)animationProtocolImpWithDictionary:(NSDictionary*)dict node:(CCNode*)nd;
- (instancetype)initAnimationProtocolImpWithDictionary:(NSDictionary*)dict node:(CCNode*)nd;

-(void)visit;
-(void)setActiveAnimation:(LHAnimation*)anim;
-(LHAnimation*)activeAnimation;

-(LHAnimation*)animationWithName:(NSString*)animName;
@end

#define LH_ANIMATION_PROTOCOL_METHODS_IMPLEMENTATION  \
-(void)setActiveAnimation:(LHAnimation*)anim{\
[_animationProtocolImp setActiveAnimation:anim];\
}\
-(LHAnimation*)activeAnimation{\
return [_animationProtocolImp activeAnimation];\
}\
-(LHAnimation*)animationWithName:(NSString*)animName{\
return [_animationProtocolImp animationWithName:animName];\
}

