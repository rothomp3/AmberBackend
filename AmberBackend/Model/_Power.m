// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Power.m instead.

#import "_Power.h"

const struct PowerAttributes PowerAttributes = {
	.name = @"name",
	.points = @"points",
};

const struct PowerRelationships PowerRelationships = {
	.characters = @"characters",
};

@implementation PowerID
@end

@implementation _Power

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Power" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Power";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Power" inManagedObjectContext:moc_];
}

- (PowerID*)objectID {
	return (PowerID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"pointsValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"points"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic name;

@dynamic points;

- (int16_t)pointsValue {
	NSNumber *result = [self points];
	return [result shortValue];
}

- (void)setPointsValue:(int16_t)value_ {
	[self setPoints:@(value_)];
}

- (int16_t)primitivePointsValue {
	NSNumber *result = [self primitivePoints];
	return [result shortValue];
}

- (void)setPrimitivePointsValue:(int16_t)value_ {
	[self setPrimitivePoints:@(value_)];
}

@dynamic characters;

- (NSMutableSet*)charactersSet {
	[self willAccessValueForKey:@"characters"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"characters"];

	[self didAccessValueForKey:@"characters"];
	return result;
}

@end

