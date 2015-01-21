// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AttributeAuction.h instead.

@import CoreData;

extern const struct AttributeAuctionAttributes {
	__unsafe_unretained NSString *armies;
	__unsafe_unretained NSString *armiesRank;
	__unsafe_unretained NSString *artifacts;
	__unsafe_unretained NSString *artifactsRank;
	__unsafe_unretained NSString *endurance;
	__unsafe_unretained NSString *enduranceRank;
	__unsafe_unretained NSString *lineage;
	__unsafe_unretained NSString *lineageRank;
	__unsafe_unretained NSString *lore;
	__unsafe_unretained NSString *loreRank;
	__unsafe_unretained NSString *psyche;
	__unsafe_unretained NSString *psycheRank;
	__unsafe_unretained NSString *renown;
	__unsafe_unretained NSString *renownRank;
	__unsafe_unretained NSString *sorcery;
	__unsafe_unretained NSString *sorceryRank;
	__unsafe_unretained NSString *strength;
	__unsafe_unretained NSString *strengthRank;
	__unsafe_unretained NSString *warfare;
	__unsafe_unretained NSString *warfareRank;
} AttributeAuctionAttributes;

extern const struct AttributeAuctionRelationships {
	__unsafe_unretained NSString *character;
} AttributeAuctionRelationships;

@class Character;

@interface AttributeAuctionID : NSManagedObjectID {}
@end

@interface _AttributeAuction : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) AttributeAuctionID* objectID;

@property (nonatomic, strong) NSNumber* armies;

@property (atomic) int16_t armiesValue;
- (int16_t)armiesValue;
- (void)setArmiesValue:(int16_t)value_;

//- (BOOL)validateArmies:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* armiesRank;

@property (atomic) int16_t armiesRankValue;
- (int16_t)armiesRankValue;
- (void)setArmiesRankValue:(int16_t)value_;

//- (BOOL)validateArmiesRank:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* artifacts;

@property (atomic) int16_t artifactsValue;
- (int16_t)artifactsValue;
- (void)setArtifactsValue:(int16_t)value_;

//- (BOOL)validateArtifacts:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* artifactsRank;

@property (atomic) int16_t artifactsRankValue;
- (int16_t)artifactsRankValue;
- (void)setArtifactsRankValue:(int16_t)value_;

//- (BOOL)validateArtifactsRank:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* endurance;

@property (atomic) int16_t enduranceValue;
- (int16_t)enduranceValue;
- (void)setEnduranceValue:(int16_t)value_;

//- (BOOL)validateEndurance:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* enduranceRank;

@property (atomic) int16_t enduranceRankValue;
- (int16_t)enduranceRankValue;
- (void)setEnduranceRankValue:(int16_t)value_;

//- (BOOL)validateEnduranceRank:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* lineage;

@property (atomic) int16_t lineageValue;
- (int16_t)lineageValue;
- (void)setLineageValue:(int16_t)value_;

//- (BOOL)validateLineage:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* lineageRank;

@property (atomic) int16_t lineageRankValue;
- (int16_t)lineageRankValue;
- (void)setLineageRankValue:(int16_t)value_;

//- (BOOL)validateLineageRank:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* lore;

@property (atomic) int16_t loreValue;
- (int16_t)loreValue;
- (void)setLoreValue:(int16_t)value_;

//- (BOOL)validateLore:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* loreRank;

@property (atomic) int16_t loreRankValue;
- (int16_t)loreRankValue;
- (void)setLoreRankValue:(int16_t)value_;

//- (BOOL)validateLoreRank:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* psyche;

@property (atomic) int16_t psycheValue;
- (int16_t)psycheValue;
- (void)setPsycheValue:(int16_t)value_;

//- (BOOL)validatePsyche:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* psycheRank;

@property (atomic) int16_t psycheRankValue;
- (int16_t)psycheRankValue;
- (void)setPsycheRankValue:(int16_t)value_;

//- (BOOL)validatePsycheRank:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* renown;

@property (atomic) int16_t renownValue;
- (int16_t)renownValue;
- (void)setRenownValue:(int16_t)value_;

//- (BOOL)validateRenown:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* renownRank;

@property (atomic) int16_t renownRankValue;
- (int16_t)renownRankValue;
- (void)setRenownRankValue:(int16_t)value_;

//- (BOOL)validateRenownRank:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* sorcery;

@property (atomic) int16_t sorceryValue;
- (int16_t)sorceryValue;
- (void)setSorceryValue:(int16_t)value_;

//- (BOOL)validateSorcery:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* sorceryRank;

@property (atomic) int16_t sorceryRankValue;
- (int16_t)sorceryRankValue;
- (void)setSorceryRankValue:(int16_t)value_;

//- (BOOL)validateSorceryRank:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* strength;

@property (atomic) int16_t strengthValue;
- (int16_t)strengthValue;
- (void)setStrengthValue:(int16_t)value_;

//- (BOOL)validateStrength:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* strengthRank;

@property (atomic) int16_t strengthRankValue;
- (int16_t)strengthRankValue;
- (void)setStrengthRankValue:(int16_t)value_;

//- (BOOL)validateStrengthRank:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* warfare;

@property (atomic) int16_t warfareValue;
- (int16_t)warfareValue;
- (void)setWarfareValue:(int16_t)value_;

//- (BOOL)validateWarfare:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* warfareRank;

@property (atomic) int16_t warfareRankValue;
- (int16_t)warfareRankValue;
- (void)setWarfareRankValue:(int16_t)value_;

//- (BOOL)validateWarfareRank:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) Character *character;

//- (BOOL)validateCharacter:(id*)value_ error:(NSError**)error_;

@end

@interface _AttributeAuction (CoreDataGeneratedPrimitiveAccessors)

- (NSNumber*)primitiveArmies;
- (void)setPrimitiveArmies:(NSNumber*)value;

- (int16_t)primitiveArmiesValue;
- (void)setPrimitiveArmiesValue:(int16_t)value_;

- (NSNumber*)primitiveArmiesRank;
- (void)setPrimitiveArmiesRank:(NSNumber*)value;

- (int16_t)primitiveArmiesRankValue;
- (void)setPrimitiveArmiesRankValue:(int16_t)value_;

- (NSNumber*)primitiveArtifacts;
- (void)setPrimitiveArtifacts:(NSNumber*)value;

- (int16_t)primitiveArtifactsValue;
- (void)setPrimitiveArtifactsValue:(int16_t)value_;

- (NSNumber*)primitiveArtifactsRank;
- (void)setPrimitiveArtifactsRank:(NSNumber*)value;

- (int16_t)primitiveArtifactsRankValue;
- (void)setPrimitiveArtifactsRankValue:(int16_t)value_;

- (NSNumber*)primitiveEndurance;
- (void)setPrimitiveEndurance:(NSNumber*)value;

- (int16_t)primitiveEnduranceValue;
- (void)setPrimitiveEnduranceValue:(int16_t)value_;

- (NSNumber*)primitiveEnduranceRank;
- (void)setPrimitiveEnduranceRank:(NSNumber*)value;

- (int16_t)primitiveEnduranceRankValue;
- (void)setPrimitiveEnduranceRankValue:(int16_t)value_;

- (NSNumber*)primitiveLineage;
- (void)setPrimitiveLineage:(NSNumber*)value;

- (int16_t)primitiveLineageValue;
- (void)setPrimitiveLineageValue:(int16_t)value_;

- (NSNumber*)primitiveLineageRank;
- (void)setPrimitiveLineageRank:(NSNumber*)value;

- (int16_t)primitiveLineageRankValue;
- (void)setPrimitiveLineageRankValue:(int16_t)value_;

- (NSNumber*)primitiveLore;
- (void)setPrimitiveLore:(NSNumber*)value;

- (int16_t)primitiveLoreValue;
- (void)setPrimitiveLoreValue:(int16_t)value_;

- (NSNumber*)primitiveLoreRank;
- (void)setPrimitiveLoreRank:(NSNumber*)value;

- (int16_t)primitiveLoreRankValue;
- (void)setPrimitiveLoreRankValue:(int16_t)value_;

- (NSNumber*)primitivePsyche;
- (void)setPrimitivePsyche:(NSNumber*)value;

- (int16_t)primitivePsycheValue;
- (void)setPrimitivePsycheValue:(int16_t)value_;

- (NSNumber*)primitivePsycheRank;
- (void)setPrimitivePsycheRank:(NSNumber*)value;

- (int16_t)primitivePsycheRankValue;
- (void)setPrimitivePsycheRankValue:(int16_t)value_;

- (NSNumber*)primitiveRenown;
- (void)setPrimitiveRenown:(NSNumber*)value;

- (int16_t)primitiveRenownValue;
- (void)setPrimitiveRenownValue:(int16_t)value_;

- (NSNumber*)primitiveRenownRank;
- (void)setPrimitiveRenownRank:(NSNumber*)value;

- (int16_t)primitiveRenownRankValue;
- (void)setPrimitiveRenownRankValue:(int16_t)value_;

- (NSNumber*)primitiveSorcery;
- (void)setPrimitiveSorcery:(NSNumber*)value;

- (int16_t)primitiveSorceryValue;
- (void)setPrimitiveSorceryValue:(int16_t)value_;

- (NSNumber*)primitiveSorceryRank;
- (void)setPrimitiveSorceryRank:(NSNumber*)value;

- (int16_t)primitiveSorceryRankValue;
- (void)setPrimitiveSorceryRankValue:(int16_t)value_;

- (NSNumber*)primitiveStrength;
- (void)setPrimitiveStrength:(NSNumber*)value;

- (int16_t)primitiveStrengthValue;
- (void)setPrimitiveStrengthValue:(int16_t)value_;

- (NSNumber*)primitiveStrengthRank;
- (void)setPrimitiveStrengthRank:(NSNumber*)value;

- (int16_t)primitiveStrengthRankValue;
- (void)setPrimitiveStrengthRankValue:(int16_t)value_;

- (NSNumber*)primitiveWarfare;
- (void)setPrimitiveWarfare:(NSNumber*)value;

- (int16_t)primitiveWarfareValue;
- (void)setPrimitiveWarfareValue:(int16_t)value_;

- (NSNumber*)primitiveWarfareRank;
- (void)setPrimitiveWarfareRank:(NSNumber*)value;

- (int16_t)primitiveWarfareRankValue;
- (void)setPrimitiveWarfareRankValue:(int16_t)value_;

- (Character*)primitiveCharacter;
- (void)setPrimitiveCharacter:(Character*)value;

@end

