//
//  GameLogic.m
//  Asteroid
//
//  Created by Jason Fry on 02/11/2014.
//  Copyright (c) 2014 VLADU BOGDAN DANIEL PFA. All rights reserved.
//

#import "GameLogic.h"
#import "LHScene.h"


@implementation GameLogic

+ (GameLogic *)scene
{
    return [[self alloc] initWithContentOfFile:@"published/MainScene.lhplist"];
}

- (id)initWithContentOfFile:(NSString *)levelPlistFile
{
    self = [super initWithContentOfFile:levelPlistFile];
    
    if (!self) return(nil);
    
    /*
     INIT YOUR CONTENT HERE
     */
    
    // done
    return self;
}

-(id)rotateLeft
{
    LHNode* node = (LHNode*)[self childNodeWithName:@"Spaceship"];
    
    CGFloat rotation = [node rotation];
    NSLog(@"Node's initial rotation value: %f", rotation);
    
    CGSize winSize = [[CCDirector sharedDirector] designSize];
    
    node.position = CGPointMake(winSize.width/2,winSize.height/2);
    
    
    rotation = rotation + 45.0;
    [node setRotation:rotation];
    
    NSLog(@"Rotating %@  %f degrees",node.name, rotation);
    
    return node;
}

-(id)thruster
{
    LHNode* node = (LHNode*)[self childNodeWithName:@"Spaceship"];
    
    CGFloat angVel = [[node physicsBody] angularVelocity];
    
    NSLog(@"%@ angular velocity: %f", node.name, angVel);
}

-(id)handleSpaceship
{
    //Angular velocity has been set in Levelhelper
    //WHY AM I NOT GETTING THE PHYSICS BODY?
/*    if([node conformsToProtocol:@protocol(LHNodeProtocol)])
    {
        LHNode* lhNode = (LHNode*)[self childNodeWithName:node.name];
        
        b2Body* = [node body];
        
        NSLog(@"%@ velocity x:%f y:%f angular velocity: %f",lhNode.name, lhNode.physicsBody.velocity.dx, lhNode.physicsBody.velocity.dy, lhNode.physicsBody.angularVelocity);
        
        lhNode.physicsBody.velocity = CGVectorMake(500.0, 0.0);
        lhNode.physicsBody.angularVelocity = 0.0;
        
        
        [lhNode.physicsBody applyImpulse: CGVectorMake(500,500)];
    }
  */
    
    [self thruster];
    
    //[self rotateLeft];
    
    
    return self;
}

-(void)handleNodesAtLocation:(CGPoint)location
{
    
    /*
    NSArray* worldNodes = [[self gameWorldNode] nodesAtPoint:location];
    //NSArray* worldNodes = [[self gameWorldNode] box2dWorld];
    
    
    for (LHNode* node in worldNodes)
    {
        
        if([[node name] containsString:@"Spaceship"])
        {
            [self handleSpaceship:node];
        }
    }
     */
}


#ifdef __CC_PLATFORM_IOS

-(void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event
{
    //without this touch began is not called
    CGPoint touchLocation = [touch locationInNode:self];
    
    //[self createMouseJointForTouchLocation:touchLocation];
    [self handleSpaceship];
    
    //dont forget to call super
    [super touchBegan:touch withEvent:event];
}

#endif


@end
