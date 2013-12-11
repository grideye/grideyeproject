// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Sensor.m instead.

#import "_Sensor.h"

const struct SensorAttributes SensorAttributes = {
	.sensorID = @"sensorID",
	.timeStamp = @"timeStamp",
};

const struct SensorRelationships SensorRelationships = {
	.cells = @"cells",
};

const struct SensorFetchedProperties SensorFetchedProperties = {
};

@implementation SensorID
@end

@implementation _Sensor

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Sensor" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Sensor";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Sensor" inManagedObjectContext:moc_];
}

- (SensorID*)objectID {
	return (SensorID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic sensorID;






@dynamic timeStamp;






@dynamic cells;

	
- (NSMutableSet*)cellsSet {
	[self willAccessValueForKey:@"cells"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"cells"];
  
	[self didAccessValueForKey:@"cells"];
	return result;
}
	






@end
