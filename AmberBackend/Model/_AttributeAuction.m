// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AttributeAuction.m instead.

#import "_AttributeAuction.h"

const struct AttributeAuctionAttributes AttributeAuctionAttributes = {
	.armies = @"armies",
	.armiesRank = @"armiesRank",
	.artifacts = @"artifacts",
	.artifactsRank = @"artifactsRank",
	.endurance = @"endurance",
	.enduranceRank = @"enduranceRank",
	.lineage = @"lineage",
	.lineageRank = @"lineageRank",
	.lore = @"lore",
	.loreRank = @"loreRank",
	.psyche = @"psyche",
	.psycheRank = @"psycheRank",
	.renown = @"renown",
	.renownRank = @"renownRank",
	.sorcery = @"sorcery",
	.sorceryRank = @"sorceryRank",
	.strength = @"strength",
	.strengthRank = @"strengthRank",
	.warfare = @"warfare",
	.warfareRank = @"warfareRank",
};

const struct AttributeAuctionRelationships AttributeAuctionRelationships = {
	.character = @"character",
};

@implementation AttributeAuctionID
@end

@implementation _AttributeAuction

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"AttributeAuction" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"AttributeAuction";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"AttributeAuction" inManagedObjectContext:moc_];
}

- (AttributeAuctionID*)objectID {
	return (AttributeAuctionID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"armiesValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"armies"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"armiesRankValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"armiesRank"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"artifactsValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"artifacts"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"artifactsRankValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"artifactsRank"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"enduranceValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"endurance"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"enduranceRankValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"enduranceRank"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"lineageValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"lineage"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"lineageRankValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"lineageRank"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"loreValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"lore"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"loreRankValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"loreRank"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"psycheValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"psyche"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"psycheRankValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"psycheRank"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"renownValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"renown"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"renownRankValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"renownRank"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"sorceryValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"sorcery"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"sorceryRankValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"sorceryRank"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"strengthValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"strength"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"strengthRankValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"strengthRank"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"warfareValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"warfare"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"warfareRankValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"warfareRank"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic armies;

- (int16_t)armiesValue {
	NSNumber *result = [self armies];
	return [result shortValue];
}

- (void)setArmiesValue:(int16_t)value_ {
	[self setArmies:@(value_)];
}

- (int16_t)primitiveArmiesValue {
	NSNumber *result = [self primitiveArmies];
	return [result shortValue];
}

- (void)setPrimitiveArmiesValue:(int16_t)value_ {
	[self setPrimitiveArmies:@(value_)];
}

@dynamic armiesRank;

- (int16_t)armiesRankValue {
	NSNumber *result = [self armiesRank];
	return [result shortValue];
}

- (void)setArmiesRankValue:(int16_t)value_ {
	[self setArmiesRank:@(value_)];
}

- (int16_t)primitiveArmiesRankValue {
	NSNumber *result = [self primitiveArmiesRank];
	return [result shortValue];
}

- (void)setPrimitiveArmiesRankValue:(int16_t)value_ {
	[self setPrimitiveArmiesRank:@(value_)];
}

@dynamic artifacts;

- (int16_t)artifactsValue {
	NSNumber *result = [self artifacts];
	return [result shortValue];
}

- (void)setArtifactsValue:(int16_t)value_ {
	[self setArtifacts:@(value_)];
}

- (int16_t)primitiveArtifactsValue {
	NSNumber *result = [self primitiveArtifacts];
	return [result shortValue];
}

- (void)setPrimitiveArtifactsValue:(int16_t)value_ {
	[self setPrimitiveArtifacts:@(value_)];
}

@dynamic artifactsRank;

- (int16_t)artifactsRankValue {
	NSNumber *result = [self artifactsRank];
	return [result shortValue];
}

- (void)setArtifactsRankValue:(int16_t)value_ {
	[self setArtifactsRank:@(value_)];
}

- (int16_t)primitiveArtifactsRankValue {
	NSNumber *result = [self primitiveArtifactsRank];
	return [result shortValue];
}

- (void)setPrimitiveArtifactsRankValue:(int16_t)value_ {
	[self setPrimitiveArtifactsRank:@(value_)];
}

@dynamic endurance;

- (int16_t)enduranceValue {
	NSNumber *result = [self endurance];
	return [result shortValue];
}

- (void)setEnduranceValue:(int16_t)value_ {
	[self setEndurance:@(value_)];
}

- (int16_t)primitiveEnduranceValue {
	NSNumber *result = [self primitiveEndurance];
	return [result shortValue];
}

- (void)setPrimitiveEnduranceValue:(int16_t)value_ {
	[self setPrimitiveEndurance:@(value_)];
}

@dynamic enduranceRank;

- (int16_t)enduranceRankValue {
	NSNumber *result = [self enduranceRank];
	return [result shortValue];
}

- (void)setEnduranceRankValue:(int16_t)value_ {
	[self setEnduranceRank:@(value_)];
}

- (int16_t)primitiveEnduranceRankValue {
	NSNumber *result = [self primitiveEnduranceRank];
	return [result shortValue];
}

- (void)setPrimitiveEnduranceRankValue:(int16_t)value_ {
	[self setPrimitiveEnduranceRank:@(value_)];
}

@dynamic lineage;

- (int16_t)lineageValue {
	NSNumber *result = [self lineage];
	return [result shortValue];
}

- (void)setLineageValue:(int16_t)value_ {
	[self setLineage:@(value_)];
}

- (int16_t)primitiveLineageValue {
	NSNumber *result = [self primitiveLineage];
	return [result shortValue];
}

- (void)setPrimitiveLineageValue:(int16_t)value_ {
	[self setPrimitiveLineage:@(value_)];
}

@dynamic lineageRank;

- (int16_t)lineageRankValue {
	NSNumber *result = [self lineageRank];
	return [result shortValue];
}

- (void)setLineageRankValue:(int16_t)value_ {
	[self setLineageRank:@(value_)];
}

- (int16_t)primitiveLineageRankValue {
	NSNumber *result = [self primitiveLineageRank];
	return [result shortValue];
}

- (void)setPrimitiveLineageRankValue:(int16_t)value_ {
	[self setPrimitiveLineageRank:@(value_)];
}

@dynamic lore;

- (int16_t)loreValue {
	NSNumber *result = [self lore];
	return [result shortValue];
}

- (void)setLoreValue:(int16_t)value_ {
	[self setLore:@(value_)];
}

- (int16_t)primitiveLoreValue {
	NSNumber *result = [self primitiveLore];
	return [result shortValue];
}

- (void)setPrimitiveLoreValue:(int16_t)value_ {
	[self setPrimitiveLore:@(value_)];
}

@dynamic loreRank;

- (int16_t)loreRankValue {
	NSNumber *result = [self loreRank];
	return [result shortValue];
}

- (void)setLoreRankValue:(int16_t)value_ {
	[self setLoreRank:@(value_)];
}

- (int16_t)primitiveLoreRankValue {
	NSNumber *result = [self primitiveLoreRank];
	return [result shortValue];
}

- (void)setPrimitiveLoreRankValue:(int16_t)value_ {
	[self setPrimitiveLoreRank:@(value_)];
}

@dynamic psyche;

- (int16_t)psycheValue {
	NSNumber *result = [self psyche];
	return [result shortValue];
}

- (void)setPsycheValue:(int16_t)value_ {
	[self setPsyche:@(value_)];
}

- (int16_t)primitivePsycheValue {
	NSNumber *result = [self primitivePsyche];
	return [result shortValue];
}

- (void)setPrimitivePsycheValue:(int16_t)value_ {
	[self setPrimitivePsyche:@(value_)];
}

@dynamic psycheRank;

- (int16_t)psycheRankValue {
	NSNumber *result = [self psycheRank];
	return [result shortValue];
}

- (void)setPsycheRankValue:(int16_t)value_ {
	[self setPsycheRank:@(value_)];
}

- (int16_t)primitivePsycheRankValue {
	NSNumber *result = [self primitivePsycheRank];
	return [result shortValue];
}

- (void)setPrimitivePsycheRankValue:(int16_t)value_ {
	[self setPrimitivePsycheRank:@(value_)];
}

@dynamic renown;

- (int16_t)renownValue {
	NSNumber *result = [self renown];
	return [result shortValue];
}

- (void)setRenownValue:(int16_t)value_ {
	[self setRenown:@(value_)];
}

- (int16_t)primitiveRenownValue {
	NSNumber *result = [self primitiveRenown];
	return [result shortValue];
}

- (void)setPrimitiveRenownValue:(int16_t)value_ {
	[self setPrimitiveRenown:@(value_)];
}

@dynamic renownRank;

- (int16_t)renownRankValue {
	NSNumber *result = [self renownRank];
	return [result shortValue];
}

- (void)setRenownRankValue:(int16_t)value_ {
	[self setRenownRank:@(value_)];
}

- (int16_t)primitiveRenownRankValue {
	NSNumber *result = [self primitiveRenownRank];
	return [result shortValue];
}

- (void)setPrimitiveRenownRankValue:(int16_t)value_ {
	[self setPrimitiveRenownRank:@(value_)];
}

@dynamic sorcery;

- (int16_t)sorceryValue {
	NSNumber *result = [self sorcery];
	return [result shortValue];
}

- (void)setSorceryValue:(int16_t)value_ {
	[self setSorcery:@(value_)];
}

- (int16_t)primitiveSorceryValue {
	NSNumber *result = [self primitiveSorcery];
	return [result shortValue];
}

- (void)setPrimitiveSorceryValue:(int16_t)value_ {
	[self setPrimitiveSorcery:@(value_)];
}

@dynamic sorceryRank;

- (int16_t)sorceryRankValue {
	NSNumber *result = [self sorceryRank];
	return [result shortValue];
}

- (void)setSorceryRankValue:(int16_t)value_ {
	[self setSorceryRank:@(value_)];
}

- (int16_t)primitiveSorceryRankValue {
	NSNumber *result = [self primitiveSorceryRank];
	return [result shortValue];
}

- (void)setPrimitiveSorceryRankValue:(int16_t)value_ {
	[self setPrimitiveSorceryRank:@(value_)];
}

@dynamic strength;

- (int16_t)strengthValue {
	NSNumber *result = [self strength];
	return [result shortValue];
}

- (void)setStrengthValue:(int16_t)value_ {
	[self setStrength:@(value_)];
}

- (int16_t)primitiveStrengthValue {
	NSNumber *result = [self primitiveStrength];
	return [result shortValue];
}

- (void)setPrimitiveStrengthValue:(int16_t)value_ {
	[self setPrimitiveStrength:@(value_)];
}

@dynamic strengthRank;

- (int16_t)strengthRankValue {
	NSNumber *result = [self strengthRank];
	return [result shortValue];
}

- (void)setStrengthRankValue:(int16_t)value_ {
	[self setStrengthRank:@(value_)];
}

- (int16_t)primitiveStrengthRankValue {
	NSNumber *result = [self primitiveStrengthRank];
	return [result shortValue];
}

- (void)setPrimitiveStrengthRankValue:(int16_t)value_ {
	[self setPrimitiveStrengthRank:@(value_)];
}

@dynamic warfare;

- (int16_t)warfareValue {
	NSNumber *result = [self warfare];
	return [result shortValue];
}

- (void)setWarfareValue:(int16_t)value_ {
	[self setWarfare:@(value_)];
}

- (int16_t)primitiveWarfareValue {
	NSNumber *result = [self primitiveWarfare];
	return [result shortValue];
}

- (void)setPrimitiveWarfareValue:(int16_t)value_ {
	[self setPrimitiveWarfare:@(value_)];
}

@dynamic warfareRank;

- (int16_t)warfareRankValue {
	NSNumber *result = [self warfareRank];
	return [result shortValue];
}

- (void)setWarfareRankValue:(int16_t)value_ {
	[self setWarfareRank:@(value_)];
}

- (int16_t)primitiveWarfareRankValue {
	NSNumber *result = [self primitiveWarfareRank];
	return [result shortValue];
}

- (void)setPrimitiveWarfareRankValue:(int16_t)value_ {
	[self setPrimitiveWarfareRank:@(value_)];
}

@dynamic character;

@end

