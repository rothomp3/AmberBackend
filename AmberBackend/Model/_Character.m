// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Character.m instead.

#import "_Character.h"

const struct CharacterAttributes CharacterAttributes = {
	.bio = @"bio",
	.characterName = @"characterName",
	.image = @"image",
	.stuff = @"stuff",
	.titles = @"titles",
};

const struct CharacterRelationships CharacterRelationships = {
	.attributeAuction = @"attributeAuction",
	.colors = @"colors",
	.items = @"items",
	.powers = @"powers",
};

@implementation CharacterID
@end

@implementation _Character

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Character" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Character";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Character" inManagedObjectContext:moc_];
}

- (CharacterID*)objectID {
	return (CharacterID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"stuffValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"stuff"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic bio;

@dynamic characterName;

@dynamic image;

@dynamic stuff;

- (int16_t)stuffValue {
	NSNumber *result = [self stuff];
	return [result shortValue];
}

- (void)setStuffValue:(int16_t)value_ {
	[self setStuff:@(value_)];
}

- (int16_t)primitiveStuffValue {
	NSNumber *result = [self primitiveStuff];
	return [result shortValue];
}

- (void)setPrimitiveStuffValue:(int16_t)value_ {
	[self setPrimitiveStuff:@(value_)];
}

@dynamic titles;

@dynamic attributeAuction;

@dynamic colors;

@dynamic items;

- (NSMutableSet*)itemsSet {
	[self willAccessValueForKey:@"items"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"items"];

	[self didAccessValueForKey:@"items"];
	return result;
}

@dynamic powers;

- (NSMutableSet*)powersSet {
	[self willAccessValueForKey:@"powers"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"powers"];

	[self didAccessValueForKey:@"powers"];
	return result;
}

@end

