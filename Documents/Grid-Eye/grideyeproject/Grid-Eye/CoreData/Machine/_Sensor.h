// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Sensor.h instead.

#import <CoreData/CoreData.h>


extern const struct SensorAttributes {
	 __unsafe_unretained NSString *sensorID;
	 __unsafe_unretained NSString *timeStamp;
} SensorAttributes;

extern const struct SensorRelationships {
	 __unsafe_unretained NSString *cells;
} SensorRelationships;

extern const struct SensorFetchedProperties {
} SensorFetchedProperties;

@class Cells;




@interface SensorID : NSManagedObjectID {}
@end

@interface _Sensor : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (SensorID*)objectID;





@property (nonatomic, retain) NSString* sensorID;



//- (BOOL)validateSensorID:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) NSString* timeStamp;



//- (BOOL)validateTimeStamp:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) NSSet *cells;

- (NSMutableSet*)cellsSet;





@end

@interface _Sensor (CoreDataGeneratedAccessors)

- (void)addCells:(NSSet*)value_;
- (void)removeCells:(NSSet*)value_;
- (void)addCellsObject:(Cells*)value_;
- (void)removeCellsObject:(Cells*)value_;

@end

@interface _Sensor (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveSensorID;
- (void)setPrimitiveSensorID:(NSString*)value;




- (NSString*)primitiveTimeStamp;
- (void)setPrimitiveTimeStamp:(NSString*)value;





- (NSMutableSet*)primitiveCells;
- (void)setPrimitiveCells:(NSMutableSet*)value;


@end
