//This file was generated automatically by LevelHelper 2
//based on the class template defined by the user.
//For more info please visit: http://www.gamedevhelper.com

#import "LHUtils.h"
#import "LHScene.h"
#import "LHUserProperties.h"

@implementation RobotUserProperty
{
	__weak id<LHNodeProtocol> node;
	float life;
	NSString* connection_uuid;
	__weak id<LHNodeProtocol> connection;
	BOOL activated;
	NSString* model;
}

@synthesize life;
@synthesize connection;
@synthesize activated;
@synthesize model;


-(void) dealloc{
	LH_SAFE_RELEASE(connection_uuid);
	connection = nil;
	LH_SAFE_RELEASE(model);

	LH_SUPER_DEALLOC();
}

+(id) customClassInstanceWithNode:(id<LHNodeProtocol>)n{
	return [[self alloc] initWithNode:n];
}

-(id) initWithNode:(id<LHNodeProtocol>)n{
	if(self = [super init]){
		node = n;
	}
	return self;
}

-(id<LHNodeProtocol>) node{
	return node;
}
-(NSString*) className{
	return NSStringFromClass([self class]);
}
-(void) setPropertiesFromDictionary:(NSDictionary*)dictionary
{

	if([dictionary objectForKey:@"life"])
		[self setLife:[[dictionary objectForKey:@"life"] floatValue]];

	if([dictionary objectForKey:@"connection"])
		connection_uuid = [[NSString alloc] initWithString:[dictionary objectForKey:@"connection"]];

	if([dictionary objectForKey:@"activated"])
		[self setActivated:[[dictionary objectForKey:@"activated"] boolValue]];

	if([dictionary objectForKey:@"model"])
		[self setModel:[dictionary objectForKey:@"model"]];

}

-(id)connection{
	if(!connection && connection_uuid){
		connection=[[node scene] childNodeWithUUID:connection_uuid];
	}
	return connection;
}

@end


@implementation OtherPropertyClass
{
	__weak id<LHNodeProtocol> node;
	NSString* memberA;
	float memberB;
	NSString* memberC;
	NSString* memberD;
}

@synthesize memberA;
@synthesize memberB;
@synthesize memberC;
@synthesize memberD;


-(void) dealloc{
	LH_SAFE_RELEASE(memberA);
	LH_SAFE_RELEASE(memberC);
	LH_SAFE_RELEASE(memberD);

	LH_SUPER_DEALLOC();
}

+(id) customClassInstanceWithNode:(id<LHNodeProtocol>)n{
	return [[self alloc] initWithNode:n];
}

-(id) initWithNode:(id<LHNodeProtocol>)n{
	if(self = [super init]){
		node = n;
	}
	return self;
}

-(id<LHNodeProtocol>) node{
	return node;
}
-(NSString*) className{
	return NSStringFromClass([self class]);
}
-(void) setPropertiesFromDictionary:(NSDictionary*)dictionary
{

	if([dictionary objectForKey:@"memberA"])
		[self setMemberA:[dictionary objectForKey:@"memberA"]];

	if([dictionary objectForKey:@"memberB"])
		[self setMemberB:[[dictionary objectForKey:@"memberB"] floatValue]];

	if([dictionary objectForKey:@"memberC"])
		[self setMemberC:[dictionary objectForKey:@"memberC"]];

	if([dictionary objectForKey:@"memberD"])
		[self setMemberD:[dictionary objectForKey:@"memberD"]];

}

@end

