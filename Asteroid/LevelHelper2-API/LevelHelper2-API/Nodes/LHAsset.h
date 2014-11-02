//
//  LHAsset.h
//  LevelHelper2-Cocos2d-v3
//
//  Created by Bogdan Vladu on 31/03/14.
//  Copyright (c) 2014 GameDevHelper.com. All rights reserved.
//

#import "cocos2d.h"
#import "LHNodeProtocol.h"
#import "LHNodeAnimationProtocol.h"
#import "LHNodePhysicsProtocol.h"

/**
 LHAsset class is used to load an asset object from a level file or from the resources folder.
 */


@interface LHAsset : CCNode <LHNodeProtocol, LHNodeAnimationProtocol, LHNodePhysicsProtocol>

+ (instancetype)nodeWithDictionary:(NSDictionary*)dict
                            parent:(CCNode*)prnt;

- (instancetype)initWithDictionary:(NSDictionary*)dict
                            parent:(CCNode*)prnt;


/**
 Creates a new asset node with a specific name.
 @param assetName The name of the new asset node. Can be used later to retrieve the asset from the children hierarchy.
 @param fileName The name of the asset file. Do not provide an extension. E.g If file is named "myAsset.lhasset.plist" then yous should pass @"myAsset.lhasset".
 @param prnt The parent node. Must not be nil and must be a children of the LHScene (or subclass of LHScene).
 @return A new asset node.
 * @code
 * //this is how you should use this function
 * LHAsset* asset = [LHAsset createWithName:@"myNewAsset" assetFileName:@"OfficerAsset.lhasset" parent:[self gameWorldNode]];
 * asset.position = CGPointMake(110,40);
 * @endcode
 */
+(instancetype)createWithName:(NSString*)assetName
                assetFileName:(NSString*)fileName
                       parent:(CCNode*)prnt;

@end
