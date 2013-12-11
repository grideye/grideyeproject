// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Cells.m instead.

#import "_Cells.h"

const struct CellsAttributes CellsAttributes = {
	.cell1 = @"cell1",
	.cell10 = @"cell10",
	.cell11 = @"cell11",
	.cell12 = @"cell12",
	.cell13 = @"cell13",
	.cell14 = @"cell14",
	.cell15 = @"cell15",
	.cell16 = @"cell16",
	.cell17 = @"cell17",
	.cell18 = @"cell18",
	.cell19 = @"cell19",
	.cell2 = @"cell2",
	.cell20 = @"cell20",
	.cell21 = @"cell21",
	.cell22 = @"cell22",
	.cell23 = @"cell23",
	.cell24 = @"cell24",
	.cell25 = @"cell25",
	.cell26 = @"cell26",
	.cell27 = @"cell27",
	.cell28 = @"cell28",
	.cell29 = @"cell29",
	.cell3 = @"cell3",
	.cell30 = @"cell30",
	.cell31 = @"cell31",
	.cell32 = @"cell32",
	.cell33 = @"cell33",
	.cell34 = @"cell34",
	.cell35 = @"cell35",
	.cell36 = @"cell36",
	.cell37 = @"cell37",
	.cell38 = @"cell38",
	.cell39 = @"cell39",
	.cell4 = @"cell4",
	.cell40 = @"cell40",
	.cell41 = @"cell41",
	.cell42 = @"cell42",
	.cell43 = @"cell43",
	.cell44 = @"cell44",
	.cell45 = @"cell45",
	.cell46 = @"cell46",
	.cell47 = @"cell47",
	.cell48 = @"cell48",
	.cell49 = @"cell49",
	.cell5 = @"cell5",
	.cell50 = @"cell50",
	.cell51 = @"cell51",
	.cell52 = @"cell52",
	.cell53 = @"cell53",
	.cell54 = @"cell54",
	.cell55 = @"cell55",
	.cell56 = @"cell56",
	.cell57 = @"cell57",
	.cell58 = @"cell58",
	.cell59 = @"cell59",
	.cell6 = @"cell6",
	.cell60 = @"cell60",
	.cell61 = @"cell61",
	.cell62 = @"cell62",
	.cell63 = @"cell63",
	.cell64 = @"cell64",
	.cell7 = @"cell7",
	.cell8 = @"cell8",
	.cell9 = @"cell9",
	.thermistor = @"thermistor",
	.timeStamp = @"timeStamp",
};

const struct CellsRelationships CellsRelationships = {
	.sensor = @"sensor",
};

const struct CellsFetchedProperties CellsFetchedProperties = {
};

@implementation CellsID
@end

@implementation _Cells

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Cells" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Cells";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Cells" inManagedObjectContext:moc_];
}

- (CellsID*)objectID {
	return (CellsID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"cell1Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell1"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell10Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell10"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell11Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell11"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell12Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell12"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell13Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell13"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell14Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell14"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell15Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell15"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell16Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell16"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell17Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell17"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell18Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell18"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell19Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell19"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell2Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell2"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell20Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell20"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell21Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell21"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell22Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell22"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell23Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell23"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell24Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell24"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell25Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell25"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell26Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell26"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell27Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell27"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell28Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell28"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell29Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell29"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell3Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell3"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell30Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell30"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell31Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell31"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell32Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell32"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell33Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell33"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell34Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell34"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell35Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell35"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell36Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell36"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell37Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell37"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell38Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell38"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell39Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell39"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell4Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell4"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell40Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell40"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell41Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell41"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell42Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell42"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell43Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell43"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell44Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell44"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell45Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell45"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell46Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell46"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell47Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell47"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell48Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell48"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell49Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell49"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell5Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell5"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell50Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell50"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell51Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell51"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell52Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell52"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell53Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell53"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell54Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell54"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell55Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell55"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell56Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell56"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell57Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell57"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell58Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell58"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell59Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell59"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell6Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell6"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell60Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell60"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell61Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell61"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell62Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell62"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell63Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell63"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell64Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell64"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell7Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell7"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell8Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell8"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cell9Value"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cell9"];
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




@dynamic cell1;



- (double)cell1Value {
	NSNumber *result = [self cell1];
	return [result doubleValue];
}

- (void)setCell1Value:(double)value_ {
	[self setCell1:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell1Value {
	NSNumber *result = [self primitiveCell1];
	return [result doubleValue];
}

- (void)setPrimitiveCell1Value:(double)value_ {
	[self setPrimitiveCell1:[NSNumber numberWithDouble:value_]];
}





@dynamic cell10;



- (double)cell10Value {
	NSNumber *result = [self cell10];
	return [result doubleValue];
}

- (void)setCell10Value:(double)value_ {
	[self setCell10:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell10Value {
	NSNumber *result = [self primitiveCell10];
	return [result doubleValue];
}

- (void)setPrimitiveCell10Value:(double)value_ {
	[self setPrimitiveCell10:[NSNumber numberWithDouble:value_]];
}





@dynamic cell11;



- (double)cell11Value {
	NSNumber *result = [self cell11];
	return [result doubleValue];
}

- (void)setCell11Value:(double)value_ {
	[self setCell11:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell11Value {
	NSNumber *result = [self primitiveCell11];
	return [result doubleValue];
}

- (void)setPrimitiveCell11Value:(double)value_ {
	[self setPrimitiveCell11:[NSNumber numberWithDouble:value_]];
}





@dynamic cell12;



- (double)cell12Value {
	NSNumber *result = [self cell12];
	return [result doubleValue];
}

- (void)setCell12Value:(double)value_ {
	[self setCell12:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell12Value {
	NSNumber *result = [self primitiveCell12];
	return [result doubleValue];
}

- (void)setPrimitiveCell12Value:(double)value_ {
	[self setPrimitiveCell12:[NSNumber numberWithDouble:value_]];
}





@dynamic cell13;



- (double)cell13Value {
	NSNumber *result = [self cell13];
	return [result doubleValue];
}

- (void)setCell13Value:(double)value_ {
	[self setCell13:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell13Value {
	NSNumber *result = [self primitiveCell13];
	return [result doubleValue];
}

- (void)setPrimitiveCell13Value:(double)value_ {
	[self setPrimitiveCell13:[NSNumber numberWithDouble:value_]];
}





@dynamic cell14;



- (double)cell14Value {
	NSNumber *result = [self cell14];
	return [result doubleValue];
}

- (void)setCell14Value:(double)value_ {
	[self setCell14:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell14Value {
	NSNumber *result = [self primitiveCell14];
	return [result doubleValue];
}

- (void)setPrimitiveCell14Value:(double)value_ {
	[self setPrimitiveCell14:[NSNumber numberWithDouble:value_]];
}





@dynamic cell15;



- (double)cell15Value {
	NSNumber *result = [self cell15];
	return [result doubleValue];
}

- (void)setCell15Value:(double)value_ {
	[self setCell15:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell15Value {
	NSNumber *result = [self primitiveCell15];
	return [result doubleValue];
}

- (void)setPrimitiveCell15Value:(double)value_ {
	[self setPrimitiveCell15:[NSNumber numberWithDouble:value_]];
}





@dynamic cell16;



- (double)cell16Value {
	NSNumber *result = [self cell16];
	return [result doubleValue];
}

- (void)setCell16Value:(double)value_ {
	[self setCell16:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell16Value {
	NSNumber *result = [self primitiveCell16];
	return [result doubleValue];
}

- (void)setPrimitiveCell16Value:(double)value_ {
	[self setPrimitiveCell16:[NSNumber numberWithDouble:value_]];
}





@dynamic cell17;



- (double)cell17Value {
	NSNumber *result = [self cell17];
	return [result doubleValue];
}

- (void)setCell17Value:(double)value_ {
	[self setCell17:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell17Value {
	NSNumber *result = [self primitiveCell17];
	return [result doubleValue];
}

- (void)setPrimitiveCell17Value:(double)value_ {
	[self setPrimitiveCell17:[NSNumber numberWithDouble:value_]];
}





@dynamic cell18;



- (double)cell18Value {
	NSNumber *result = [self cell18];
	return [result doubleValue];
}

- (void)setCell18Value:(double)value_ {
	[self setCell18:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell18Value {
	NSNumber *result = [self primitiveCell18];
	return [result doubleValue];
}

- (void)setPrimitiveCell18Value:(double)value_ {
	[self setPrimitiveCell18:[NSNumber numberWithDouble:value_]];
}





@dynamic cell19;



- (double)cell19Value {
	NSNumber *result = [self cell19];
	return [result doubleValue];
}

- (void)setCell19Value:(double)value_ {
	[self setCell19:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell19Value {
	NSNumber *result = [self primitiveCell19];
	return [result doubleValue];
}

- (void)setPrimitiveCell19Value:(double)value_ {
	[self setPrimitiveCell19:[NSNumber numberWithDouble:value_]];
}





@dynamic cell2;



- (double)cell2Value {
	NSNumber *result = [self cell2];
	return [result doubleValue];
}

- (void)setCell2Value:(double)value_ {
	[self setCell2:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell2Value {
	NSNumber *result = [self primitiveCell2];
	return [result doubleValue];
}

- (void)setPrimitiveCell2Value:(double)value_ {
	[self setPrimitiveCell2:[NSNumber numberWithDouble:value_]];
}





@dynamic cell20;



- (double)cell20Value {
	NSNumber *result = [self cell20];
	return [result doubleValue];
}

- (void)setCell20Value:(double)value_ {
	[self setCell20:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell20Value {
	NSNumber *result = [self primitiveCell20];
	return [result doubleValue];
}

- (void)setPrimitiveCell20Value:(double)value_ {
	[self setPrimitiveCell20:[NSNumber numberWithDouble:value_]];
}





@dynamic cell21;



- (double)cell21Value {
	NSNumber *result = [self cell21];
	return [result doubleValue];
}

- (void)setCell21Value:(double)value_ {
	[self setCell21:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell21Value {
	NSNumber *result = [self primitiveCell21];
	return [result doubleValue];
}

- (void)setPrimitiveCell21Value:(double)value_ {
	[self setPrimitiveCell21:[NSNumber numberWithDouble:value_]];
}





@dynamic cell22;



- (double)cell22Value {
	NSNumber *result = [self cell22];
	return [result doubleValue];
}

- (void)setCell22Value:(double)value_ {
	[self setCell22:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell22Value {
	NSNumber *result = [self primitiveCell22];
	return [result doubleValue];
}

- (void)setPrimitiveCell22Value:(double)value_ {
	[self setPrimitiveCell22:[NSNumber numberWithDouble:value_]];
}





@dynamic cell23;



- (double)cell23Value {
	NSNumber *result = [self cell23];
	return [result doubleValue];
}

- (void)setCell23Value:(double)value_ {
	[self setCell23:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell23Value {
	NSNumber *result = [self primitiveCell23];
	return [result doubleValue];
}

- (void)setPrimitiveCell23Value:(double)value_ {
	[self setPrimitiveCell23:[NSNumber numberWithDouble:value_]];
}





@dynamic cell24;



- (double)cell24Value {
	NSNumber *result = [self cell24];
	return [result doubleValue];
}

- (void)setCell24Value:(double)value_ {
	[self setCell24:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell24Value {
	NSNumber *result = [self primitiveCell24];
	return [result doubleValue];
}

- (void)setPrimitiveCell24Value:(double)value_ {
	[self setPrimitiveCell24:[NSNumber numberWithDouble:value_]];
}





@dynamic cell25;



- (double)cell25Value {
	NSNumber *result = [self cell25];
	return [result doubleValue];
}

- (void)setCell25Value:(double)value_ {
	[self setCell25:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell25Value {
	NSNumber *result = [self primitiveCell25];
	return [result doubleValue];
}

- (void)setPrimitiveCell25Value:(double)value_ {
	[self setPrimitiveCell25:[NSNumber numberWithDouble:value_]];
}





@dynamic cell26;



- (double)cell26Value {
	NSNumber *result = [self cell26];
	return [result doubleValue];
}

- (void)setCell26Value:(double)value_ {
	[self setCell26:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell26Value {
	NSNumber *result = [self primitiveCell26];
	return [result doubleValue];
}

- (void)setPrimitiveCell26Value:(double)value_ {
	[self setPrimitiveCell26:[NSNumber numberWithDouble:value_]];
}





@dynamic cell27;



- (double)cell27Value {
	NSNumber *result = [self cell27];
	return [result doubleValue];
}

- (void)setCell27Value:(double)value_ {
	[self setCell27:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell27Value {
	NSNumber *result = [self primitiveCell27];
	return [result doubleValue];
}

- (void)setPrimitiveCell27Value:(double)value_ {
	[self setPrimitiveCell27:[NSNumber numberWithDouble:value_]];
}





@dynamic cell28;



- (double)cell28Value {
	NSNumber *result = [self cell28];
	return [result doubleValue];
}

- (void)setCell28Value:(double)value_ {
	[self setCell28:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell28Value {
	NSNumber *result = [self primitiveCell28];
	return [result doubleValue];
}

- (void)setPrimitiveCell28Value:(double)value_ {
	[self setPrimitiveCell28:[NSNumber numberWithDouble:value_]];
}





@dynamic cell29;



- (double)cell29Value {
	NSNumber *result = [self cell29];
	return [result doubleValue];
}

- (void)setCell29Value:(double)value_ {
	[self setCell29:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell29Value {
	NSNumber *result = [self primitiveCell29];
	return [result doubleValue];
}

- (void)setPrimitiveCell29Value:(double)value_ {
	[self setPrimitiveCell29:[NSNumber numberWithDouble:value_]];
}





@dynamic cell3;



- (double)cell3Value {
	NSNumber *result = [self cell3];
	return [result doubleValue];
}

- (void)setCell3Value:(double)value_ {
	[self setCell3:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell3Value {
	NSNumber *result = [self primitiveCell3];
	return [result doubleValue];
}

- (void)setPrimitiveCell3Value:(double)value_ {
	[self setPrimitiveCell3:[NSNumber numberWithDouble:value_]];
}





@dynamic cell30;



- (double)cell30Value {
	NSNumber *result = [self cell30];
	return [result doubleValue];
}

- (void)setCell30Value:(double)value_ {
	[self setCell30:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell30Value {
	NSNumber *result = [self primitiveCell30];
	return [result doubleValue];
}

- (void)setPrimitiveCell30Value:(double)value_ {
	[self setPrimitiveCell30:[NSNumber numberWithDouble:value_]];
}





@dynamic cell31;



- (double)cell31Value {
	NSNumber *result = [self cell31];
	return [result doubleValue];
}

- (void)setCell31Value:(double)value_ {
	[self setCell31:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell31Value {
	NSNumber *result = [self primitiveCell31];
	return [result doubleValue];
}

- (void)setPrimitiveCell31Value:(double)value_ {
	[self setPrimitiveCell31:[NSNumber numberWithDouble:value_]];
}





@dynamic cell32;



- (double)cell32Value {
	NSNumber *result = [self cell32];
	return [result doubleValue];
}

- (void)setCell32Value:(double)value_ {
	[self setCell32:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell32Value {
	NSNumber *result = [self primitiveCell32];
	return [result doubleValue];
}

- (void)setPrimitiveCell32Value:(double)value_ {
	[self setPrimitiveCell32:[NSNumber numberWithDouble:value_]];
}





@dynamic cell33;



- (double)cell33Value {
	NSNumber *result = [self cell33];
	return [result doubleValue];
}

- (void)setCell33Value:(double)value_ {
	[self setCell33:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell33Value {
	NSNumber *result = [self primitiveCell33];
	return [result doubleValue];
}

- (void)setPrimitiveCell33Value:(double)value_ {
	[self setPrimitiveCell33:[NSNumber numberWithDouble:value_]];
}





@dynamic cell34;



- (double)cell34Value {
	NSNumber *result = [self cell34];
	return [result doubleValue];
}

- (void)setCell34Value:(double)value_ {
	[self setCell34:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell34Value {
	NSNumber *result = [self primitiveCell34];
	return [result doubleValue];
}

- (void)setPrimitiveCell34Value:(double)value_ {
	[self setPrimitiveCell34:[NSNumber numberWithDouble:value_]];
}





@dynamic cell35;



- (double)cell35Value {
	NSNumber *result = [self cell35];
	return [result doubleValue];
}

- (void)setCell35Value:(double)value_ {
	[self setCell35:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell35Value {
	NSNumber *result = [self primitiveCell35];
	return [result doubleValue];
}

- (void)setPrimitiveCell35Value:(double)value_ {
	[self setPrimitiveCell35:[NSNumber numberWithDouble:value_]];
}





@dynamic cell36;



- (double)cell36Value {
	NSNumber *result = [self cell36];
	return [result doubleValue];
}

- (void)setCell36Value:(double)value_ {
	[self setCell36:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell36Value {
	NSNumber *result = [self primitiveCell36];
	return [result doubleValue];
}

- (void)setPrimitiveCell36Value:(double)value_ {
	[self setPrimitiveCell36:[NSNumber numberWithDouble:value_]];
}





@dynamic cell37;



- (double)cell37Value {
	NSNumber *result = [self cell37];
	return [result doubleValue];
}

- (void)setCell37Value:(double)value_ {
	[self setCell37:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell37Value {
	NSNumber *result = [self primitiveCell37];
	return [result doubleValue];
}

- (void)setPrimitiveCell37Value:(double)value_ {
	[self setPrimitiveCell37:[NSNumber numberWithDouble:value_]];
}





@dynamic cell38;



- (double)cell38Value {
	NSNumber *result = [self cell38];
	return [result doubleValue];
}

- (void)setCell38Value:(double)value_ {
	[self setCell38:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell38Value {
	NSNumber *result = [self primitiveCell38];
	return [result doubleValue];
}

- (void)setPrimitiveCell38Value:(double)value_ {
	[self setPrimitiveCell38:[NSNumber numberWithDouble:value_]];
}





@dynamic cell39;



- (double)cell39Value {
	NSNumber *result = [self cell39];
	return [result doubleValue];
}

- (void)setCell39Value:(double)value_ {
	[self setCell39:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell39Value {
	NSNumber *result = [self primitiveCell39];
	return [result doubleValue];
}

- (void)setPrimitiveCell39Value:(double)value_ {
	[self setPrimitiveCell39:[NSNumber numberWithDouble:value_]];
}





@dynamic cell4;



- (double)cell4Value {
	NSNumber *result = [self cell4];
	return [result doubleValue];
}

- (void)setCell4Value:(double)value_ {
	[self setCell4:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell4Value {
	NSNumber *result = [self primitiveCell4];
	return [result doubleValue];
}

- (void)setPrimitiveCell4Value:(double)value_ {
	[self setPrimitiveCell4:[NSNumber numberWithDouble:value_]];
}





@dynamic cell40;



- (double)cell40Value {
	NSNumber *result = [self cell40];
	return [result doubleValue];
}

- (void)setCell40Value:(double)value_ {
	[self setCell40:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell40Value {
	NSNumber *result = [self primitiveCell40];
	return [result doubleValue];
}

- (void)setPrimitiveCell40Value:(double)value_ {
	[self setPrimitiveCell40:[NSNumber numberWithDouble:value_]];
}





@dynamic cell41;



- (double)cell41Value {
	NSNumber *result = [self cell41];
	return [result doubleValue];
}

- (void)setCell41Value:(double)value_ {
	[self setCell41:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell41Value {
	NSNumber *result = [self primitiveCell41];
	return [result doubleValue];
}

- (void)setPrimitiveCell41Value:(double)value_ {
	[self setPrimitiveCell41:[NSNumber numberWithDouble:value_]];
}





@dynamic cell42;



- (double)cell42Value {
	NSNumber *result = [self cell42];
	return [result doubleValue];
}

- (void)setCell42Value:(double)value_ {
	[self setCell42:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell42Value {
	NSNumber *result = [self primitiveCell42];
	return [result doubleValue];
}

- (void)setPrimitiveCell42Value:(double)value_ {
	[self setPrimitiveCell42:[NSNumber numberWithDouble:value_]];
}





@dynamic cell43;



- (double)cell43Value {
	NSNumber *result = [self cell43];
	return [result doubleValue];
}

- (void)setCell43Value:(double)value_ {
	[self setCell43:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell43Value {
	NSNumber *result = [self primitiveCell43];
	return [result doubleValue];
}

- (void)setPrimitiveCell43Value:(double)value_ {
	[self setPrimitiveCell43:[NSNumber numberWithDouble:value_]];
}





@dynamic cell44;



- (double)cell44Value {
	NSNumber *result = [self cell44];
	return [result doubleValue];
}

- (void)setCell44Value:(double)value_ {
	[self setCell44:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell44Value {
	NSNumber *result = [self primitiveCell44];
	return [result doubleValue];
}

- (void)setPrimitiveCell44Value:(double)value_ {
	[self setPrimitiveCell44:[NSNumber numberWithDouble:value_]];
}





@dynamic cell45;



- (double)cell45Value {
	NSNumber *result = [self cell45];
	return [result doubleValue];
}

- (void)setCell45Value:(double)value_ {
	[self setCell45:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell45Value {
	NSNumber *result = [self primitiveCell45];
	return [result doubleValue];
}

- (void)setPrimitiveCell45Value:(double)value_ {
	[self setPrimitiveCell45:[NSNumber numberWithDouble:value_]];
}





@dynamic cell46;



- (double)cell46Value {
	NSNumber *result = [self cell46];
	return [result doubleValue];
}

- (void)setCell46Value:(double)value_ {
	[self setCell46:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell46Value {
	NSNumber *result = [self primitiveCell46];
	return [result doubleValue];
}

- (void)setPrimitiveCell46Value:(double)value_ {
	[self setPrimitiveCell46:[NSNumber numberWithDouble:value_]];
}





@dynamic cell47;



- (double)cell47Value {
	NSNumber *result = [self cell47];
	return [result doubleValue];
}

- (void)setCell47Value:(double)value_ {
	[self setCell47:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell47Value {
	NSNumber *result = [self primitiveCell47];
	return [result doubleValue];
}

- (void)setPrimitiveCell47Value:(double)value_ {
	[self setPrimitiveCell47:[NSNumber numberWithDouble:value_]];
}





@dynamic cell48;



- (double)cell48Value {
	NSNumber *result = [self cell48];
	return [result doubleValue];
}

- (void)setCell48Value:(double)value_ {
	[self setCell48:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell48Value {
	NSNumber *result = [self primitiveCell48];
	return [result doubleValue];
}

- (void)setPrimitiveCell48Value:(double)value_ {
	[self setPrimitiveCell48:[NSNumber numberWithDouble:value_]];
}





@dynamic cell49;



- (double)cell49Value {
	NSNumber *result = [self cell49];
	return [result doubleValue];
}

- (void)setCell49Value:(double)value_ {
	[self setCell49:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell49Value {
	NSNumber *result = [self primitiveCell49];
	return [result doubleValue];
}

- (void)setPrimitiveCell49Value:(double)value_ {
	[self setPrimitiveCell49:[NSNumber numberWithDouble:value_]];
}





@dynamic cell5;



- (double)cell5Value {
	NSNumber *result = [self cell5];
	return [result doubleValue];
}

- (void)setCell5Value:(double)value_ {
	[self setCell5:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell5Value {
	NSNumber *result = [self primitiveCell5];
	return [result doubleValue];
}

- (void)setPrimitiveCell5Value:(double)value_ {
	[self setPrimitiveCell5:[NSNumber numberWithDouble:value_]];
}





@dynamic cell50;



- (double)cell50Value {
	NSNumber *result = [self cell50];
	return [result doubleValue];
}

- (void)setCell50Value:(double)value_ {
	[self setCell50:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell50Value {
	NSNumber *result = [self primitiveCell50];
	return [result doubleValue];
}

- (void)setPrimitiveCell50Value:(double)value_ {
	[self setPrimitiveCell50:[NSNumber numberWithDouble:value_]];
}





@dynamic cell51;



- (double)cell51Value {
	NSNumber *result = [self cell51];
	return [result doubleValue];
}

- (void)setCell51Value:(double)value_ {
	[self setCell51:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell51Value {
	NSNumber *result = [self primitiveCell51];
	return [result doubleValue];
}

- (void)setPrimitiveCell51Value:(double)value_ {
	[self setPrimitiveCell51:[NSNumber numberWithDouble:value_]];
}





@dynamic cell52;



- (double)cell52Value {
	NSNumber *result = [self cell52];
	return [result doubleValue];
}

- (void)setCell52Value:(double)value_ {
	[self setCell52:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell52Value {
	NSNumber *result = [self primitiveCell52];
	return [result doubleValue];
}

- (void)setPrimitiveCell52Value:(double)value_ {
	[self setPrimitiveCell52:[NSNumber numberWithDouble:value_]];
}





@dynamic cell53;



- (double)cell53Value {
	NSNumber *result = [self cell53];
	return [result doubleValue];
}

- (void)setCell53Value:(double)value_ {
	[self setCell53:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell53Value {
	NSNumber *result = [self primitiveCell53];
	return [result doubleValue];
}

- (void)setPrimitiveCell53Value:(double)value_ {
	[self setPrimitiveCell53:[NSNumber numberWithDouble:value_]];
}





@dynamic cell54;



- (double)cell54Value {
	NSNumber *result = [self cell54];
	return [result doubleValue];
}

- (void)setCell54Value:(double)value_ {
	[self setCell54:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell54Value {
	NSNumber *result = [self primitiveCell54];
	return [result doubleValue];
}

- (void)setPrimitiveCell54Value:(double)value_ {
	[self setPrimitiveCell54:[NSNumber numberWithDouble:value_]];
}





@dynamic cell55;



- (double)cell55Value {
	NSNumber *result = [self cell55];
	return [result doubleValue];
}

- (void)setCell55Value:(double)value_ {
	[self setCell55:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell55Value {
	NSNumber *result = [self primitiveCell55];
	return [result doubleValue];
}

- (void)setPrimitiveCell55Value:(double)value_ {
	[self setPrimitiveCell55:[NSNumber numberWithDouble:value_]];
}





@dynamic cell56;



- (double)cell56Value {
	NSNumber *result = [self cell56];
	return [result doubleValue];
}

- (void)setCell56Value:(double)value_ {
	[self setCell56:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell56Value {
	NSNumber *result = [self primitiveCell56];
	return [result doubleValue];
}

- (void)setPrimitiveCell56Value:(double)value_ {
	[self setPrimitiveCell56:[NSNumber numberWithDouble:value_]];
}





@dynamic cell57;



- (double)cell57Value {
	NSNumber *result = [self cell57];
	return [result doubleValue];
}

- (void)setCell57Value:(double)value_ {
	[self setCell57:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell57Value {
	NSNumber *result = [self primitiveCell57];
	return [result doubleValue];
}

- (void)setPrimitiveCell57Value:(double)value_ {
	[self setPrimitiveCell57:[NSNumber numberWithDouble:value_]];
}





@dynamic cell58;



- (double)cell58Value {
	NSNumber *result = [self cell58];
	return [result doubleValue];
}

- (void)setCell58Value:(double)value_ {
	[self setCell58:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell58Value {
	NSNumber *result = [self primitiveCell58];
	return [result doubleValue];
}

- (void)setPrimitiveCell58Value:(double)value_ {
	[self setPrimitiveCell58:[NSNumber numberWithDouble:value_]];
}





@dynamic cell59;



- (double)cell59Value {
	NSNumber *result = [self cell59];
	return [result doubleValue];
}

- (void)setCell59Value:(double)value_ {
	[self setCell59:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell59Value {
	NSNumber *result = [self primitiveCell59];
	return [result doubleValue];
}

- (void)setPrimitiveCell59Value:(double)value_ {
	[self setPrimitiveCell59:[NSNumber numberWithDouble:value_]];
}





@dynamic cell6;



- (double)cell6Value {
	NSNumber *result = [self cell6];
	return [result doubleValue];
}

- (void)setCell6Value:(double)value_ {
	[self setCell6:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell6Value {
	NSNumber *result = [self primitiveCell6];
	return [result doubleValue];
}

- (void)setPrimitiveCell6Value:(double)value_ {
	[self setPrimitiveCell6:[NSNumber numberWithDouble:value_]];
}





@dynamic cell60;



- (double)cell60Value {
	NSNumber *result = [self cell60];
	return [result doubleValue];
}

- (void)setCell60Value:(double)value_ {
	[self setCell60:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell60Value {
	NSNumber *result = [self primitiveCell60];
	return [result doubleValue];
}

- (void)setPrimitiveCell60Value:(double)value_ {
	[self setPrimitiveCell60:[NSNumber numberWithDouble:value_]];
}





@dynamic cell61;



- (double)cell61Value {
	NSNumber *result = [self cell61];
	return [result doubleValue];
}

- (void)setCell61Value:(double)value_ {
	[self setCell61:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell61Value {
	NSNumber *result = [self primitiveCell61];
	return [result doubleValue];
}

- (void)setPrimitiveCell61Value:(double)value_ {
	[self setPrimitiveCell61:[NSNumber numberWithDouble:value_]];
}





@dynamic cell62;



- (double)cell62Value {
	NSNumber *result = [self cell62];
	return [result doubleValue];
}

- (void)setCell62Value:(double)value_ {
	[self setCell62:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell62Value {
	NSNumber *result = [self primitiveCell62];
	return [result doubleValue];
}

- (void)setPrimitiveCell62Value:(double)value_ {
	[self setPrimitiveCell62:[NSNumber numberWithDouble:value_]];
}





@dynamic cell63;



- (double)cell63Value {
	NSNumber *result = [self cell63];
	return [result doubleValue];
}

- (void)setCell63Value:(double)value_ {
	[self setCell63:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell63Value {
	NSNumber *result = [self primitiveCell63];
	return [result doubleValue];
}

- (void)setPrimitiveCell63Value:(double)value_ {
	[self setPrimitiveCell63:[NSNumber numberWithDouble:value_]];
}





@dynamic cell64;



- (double)cell64Value {
	NSNumber *result = [self cell64];
	return [result doubleValue];
}

- (void)setCell64Value:(double)value_ {
	[self setCell64:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell64Value {
	NSNumber *result = [self primitiveCell64];
	return [result doubleValue];
}

- (void)setPrimitiveCell64Value:(double)value_ {
	[self setPrimitiveCell64:[NSNumber numberWithDouble:value_]];
}





@dynamic cell7;



- (double)cell7Value {
	NSNumber *result = [self cell7];
	return [result doubleValue];
}

- (void)setCell7Value:(double)value_ {
	[self setCell7:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell7Value {
	NSNumber *result = [self primitiveCell7];
	return [result doubleValue];
}

- (void)setPrimitiveCell7Value:(double)value_ {
	[self setPrimitiveCell7:[NSNumber numberWithDouble:value_]];
}





@dynamic cell8;



- (double)cell8Value {
	NSNumber *result = [self cell8];
	return [result doubleValue];
}

- (void)setCell8Value:(double)value_ {
	[self setCell8:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell8Value {
	NSNumber *result = [self primitiveCell8];
	return [result doubleValue];
}

- (void)setPrimitiveCell8Value:(double)value_ {
	[self setPrimitiveCell8:[NSNumber numberWithDouble:value_]];
}





@dynamic cell9;



- (double)cell9Value {
	NSNumber *result = [self cell9];
	return [result doubleValue];
}

- (void)setCell9Value:(double)value_ {
	[self setCell9:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveCell9Value {
	NSNumber *result = [self primitiveCell9];
	return [result doubleValue];
}

- (void)setPrimitiveCell9Value:(double)value_ {
	[self setPrimitiveCell9:[NSNumber numberWithDouble:value_]];
}





@dynamic thermistor;



- (double)thermistorValue {
	NSNumber *result = [self thermistor];
	return [result doubleValue];
}

- (void)setThermistorValue:(double)value_ {
	[self setThermistor:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveThermistorValue {
	NSNumber *result = [self primitiveThermistor];
	return [result doubleValue];
}

- (void)setPrimitiveThermistorValue:(double)value_ {
	[self setPrimitiveThermistor:[NSNumber numberWithDouble:value_]];
}





@dynamic timeStamp;






@dynamic sensor;

	






@end
