// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Power.m instead.

#import "_Power.h"

const struct PowerAttributes PowerAttributes = {
	.name = @"name",
	.pointCost = @"pointCost",
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

	if ([key isEqualToString:@"pointCostValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"pointCost"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic name;

@dynamic pointCost;

- (int16_t)pointCostValue {
	NSNumber *result = [self pointCost];
	return [result shortValue];
}

- (void)setPointCostValue:(int16_t)value_ {
	[self setPointCost:@(value_)];
}

- (int16_t)primitivePointCostValue {
	NSNumber *result = [self primitivePointCost];
	return [result shortValue];
}

- (void)setPrimitivePointCostValue:(int16_t)value_ {
	[self setPrimitivePointCost:@(value_)];
}

@dynamic characters;

- (NSMutableSet*)charactersSet {
	[self willAccessValueForKey:@"characters"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"characters"];

	[self didAccessValueForKey:@"characters"];
	return result;
}

@end

