// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Sensor.m instead.

#import "_Sensor.h"

const struct SensorAttributes SensorAttributes = {
	.sensorID = @"sensorID",
	.thermistor = @"thermistor",
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
	
	if ([key isEqualToString:@"sensorIDValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"sensorID"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"thermistorValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"thermistor"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic sensorID;



- (int16_t)sensorIDValue {
	NSNumber *result = [self sensorID];
	return [result shortValue];
}

- (void)setSensorIDValue:(int16_t)value_ {
	[self setSensorID:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveSensorIDValue {
	NSNumber *result = [self primitiveSensorID];
	return [result shortValue];
}

- (void)setPrimitiveSensorIDValue:(int16_t)value_ {
	[self setPrimitiveSensorID:[NSNumber numberWithShort:value_]];
}





@dynamic thermistor;



- (int16_t)thermistorValue {
	NSNumber *result = [self thermistor];
	return [result shortValue];
}

- (void)setThermistorValue:(int16_t)value_ {
	[self setThermistor:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveThermistorValue {
	NSNumber *result = [self primitiveThermistor];
	return [result shortValue];
}

- (void)setPrimitiveThermistorValue:(int16_t)value_ {
	[self setPrimitiveThermistor:[NSNumber numberWithShort:value_]];
}





@dynamic timeStamp;






@dynamic cells;

	
- (NSMutableSet*)cellsSet {
	[self willAccessValueForKey:@"cells"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"cells"];
  
	[self didAccessValueForKey:@"cells"];
	return result;
}
	






@end
