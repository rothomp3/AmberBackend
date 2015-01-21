// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Colors.m instead.

#import "_Colors.h"

const struct ColorsAttributes ColorsAttributes = {
	.attributesBackgroundColor1 = @"attributesBackgroundColor1",
	.attributesBackgroundColor2 = @"attributesBackgroundColor2",
	.attributesTextColor1 = @"attributesTextColor1",
	.attributesTextColor2 = @"attributesTextColor2",
	.backgroundImage = @"backgroundImage",
	.backgroundImageFilename = @"backgroundImageFilename",
	.footerTextColor = @"footerTextColor",
	.headerBackgroundColor = @"headerBackgroundColor",
	.headerShadowColor = @"headerShadowColor",
	.headerTextColor = @"headerTextColor",
	.headerTextShadowColor = @"headerTextShadowColor",
	.mainBackgroundColor = @"mainBackgroundColor",
	.mainShadowColor = @"mainShadowColor",
	.mainTextColor = @"mainTextColor",
};

const struct ColorsRelationships ColorsRelationships = {
	.character = @"character",
};

@implementation ColorsID
@end

@implementation _Colors

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Colors" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Colors";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Colors" inManagedObjectContext:moc_];
}

- (ColorsID*)objectID {
	return (ColorsID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic attributesBackgroundColor1;

@dynamic attributesBackgroundColor2;

@dynamic attributesTextColor1;

@dynamic attributesTextColor2;

@dynamic backgroundImage;

@dynamic backgroundImageFilename;

@dynamic footerTextColor;

@dynamic headerBackgroundColor;

@dynamic headerShadowColor;

@dynamic headerTextColor;

@dynamic headerTextShadowColor;

@dynamic mainBackgroundColor;

@dynamic mainShadowColor;

@dynamic mainTextColor;

@dynamic character;

@end

