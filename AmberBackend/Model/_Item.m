// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Item.m instead.

#import "_Item.h"

const struct ItemAttributes ItemAttributes = {
	.name = @"name",
	.pointCost = @"pointCost",
};

const struct ItemRelationships ItemRelationships = {
	.character = @"character",
};

@implementation ItemID
@end

@implementation _Item

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Item" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Item";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Item" inManagedObjectContext:moc_];
}

- (ItemID*)objectID {
	return (ItemID*)[super objectID];
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

@dynamic character;

@end

