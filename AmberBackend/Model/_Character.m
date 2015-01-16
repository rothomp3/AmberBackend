// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Character.m instead.

#import "_Character.h"

const struct CharacterAttributes CharacterAttributes = {
	.attributesTextColor = @"attributesTextColor",
	.backgroundImageFilename = @"backgroundImageFilename",
	.footerTextColor = @"footerTextColor",
	.headerBackgroundColor = @"headerBackgroundColor",
	.headerShadowColor = @"headerShadowColor",
	.headerTextColor = @"headerTextColor",
	.mainBackgroundColor = @"mainBackgroundColor",
	.mainShadowColor = @"mainShadowColor",
	.mainTextColor = @"mainTextColor",
	.name = @"name",
	.titles = @"titles",
};

const struct CharacterRelationships CharacterRelationships = {
	.attributeAuction = @"attributeAuction",
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

	return keyPaths;
}

@dynamic attributesTextColor;

@dynamic backgroundImageFilename;

@dynamic footerTextColor;

@dynamic headerBackgroundColor;

@dynamic headerShadowColor;

@dynamic headerTextColor;

@dynamic mainBackgroundColor;

@dynamic mainShadowColor;

@dynamic mainTextColor;

@dynamic name;

@dynamic titles;

@dynamic attributeAuction;

@dynamic items;

@dynamic powers;

- (NSMutableSet*)powersSet {
	[self willAccessValueForKey:@"powers"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"powers"];

	[self didAccessValueForKey:@"powers"];
	return result;
}

@end

