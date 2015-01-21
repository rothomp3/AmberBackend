// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Item.m instead.

#import "_Item.h"

const struct ItemAttributes ItemAttributes = {
	.name = @"name",
	.points = @"points",
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

@dynamic character;

@end

