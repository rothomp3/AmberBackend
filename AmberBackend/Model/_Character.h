// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Character.h instead.

@import CoreData;

extern const struct CharacterAttributes {
	__unsafe_unretained NSString *attributesTextColor;
	__unsafe_unretained NSString *backgroundImageFilename;
	__unsafe_unretained NSString *footerTextColor;
	__unsafe_unretained NSString *headerBackgroundColor;
	__unsafe_unretained NSString *headerShadowColor;
	__unsafe_unretained NSString *headerTextColor;
	__unsafe_unretained NSString *mainBackgroundColor;
	__unsafe_unretained NSString *mainShadowColor;
	__unsafe_unretained NSString *mainTextColor;
	__unsafe_unretained NSString *name;
	__unsafe_unretained NSString *titles;
} CharacterAttributes;

extern const struct CharacterRelationships {
	__unsafe_unretained NSString *attributeAuction;
	__unsafe_unretained NSString *items;
	__unsafe_unretained NSString *powers;
} CharacterRelationships;

@class AttributeAuction;
@class Item;
@class Power;

@interface CharacterID : NSManagedObjectID {}
@end

@interface _Character : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) CharacterID* objectID;

@property (nonatomic, strong) NSString* attributesTextColor;

//- (BOOL)validateAttributesTextColor:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* backgroundImageFilename;

//- (BOOL)validateBackgroundImageFilename:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* footerTextColor;

//- (BOOL)validateFooterTextColor:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* headerBackgroundColor;

//- (BOOL)validateHeaderBackgroundColor:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* headerShadowColor;

//- (BOOL)validateHeaderShadowColor:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* headerTextColor;

//- (BOOL)validateHeaderTextColor:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* mainBackgroundColor;

//- (BOOL)validateMainBackgroundColor:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* mainShadowColor;

//- (BOOL)validateMainShadowColor:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* mainTextColor;

//- (BOOL)validateMainTextColor:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* titles;

//- (BOOL)validateTitles:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) AttributeAuction *attributeAuction;

//- (BOOL)validateAttributeAuction:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) Item *items;

//- (BOOL)validateItems:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *powers;

- (NSMutableSet*)powersSet;

@end

@interface _Character (PowersCoreDataGeneratedAccessors)
- (void)addPowers:(NSSet*)value_;
- (void)removePowers:(NSSet*)value_;
- (void)addPowersObject:(Power*)value_;
- (void)removePowersObject:(Power*)value_;

@end

@interface _Character (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveAttributesTextColor;
- (void)setPrimitiveAttributesTextColor:(NSString*)value;

- (NSString*)primitiveBackgroundImageFilename;
- (void)setPrimitiveBackgroundImageFilename:(NSString*)value;

- (NSString*)primitiveFooterTextColor;
- (void)setPrimitiveFooterTextColor:(NSString*)value;

- (NSString*)primitiveHeaderBackgroundColor;
- (void)setPrimitiveHeaderBackgroundColor:(NSString*)value;

- (NSString*)primitiveHeaderShadowColor;
- (void)setPrimitiveHeaderShadowColor:(NSString*)value;

- (NSString*)primitiveHeaderTextColor;
- (void)setPrimitiveHeaderTextColor:(NSString*)value;

- (NSString*)primitiveMainBackgroundColor;
- (void)setPrimitiveMainBackgroundColor:(NSString*)value;

- (NSString*)primitiveMainShadowColor;
- (void)setPrimitiveMainShadowColor:(NSString*)value;

- (NSString*)primitiveMainTextColor;
- (void)setPrimitiveMainTextColor:(NSString*)value;

- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;

- (NSString*)primitiveTitles;
- (void)setPrimitiveTitles:(NSString*)value;

- (AttributeAuction*)primitiveAttributeAuction;
- (void)setPrimitiveAttributeAuction:(AttributeAuction*)value;

- (Item*)primitiveItems;
- (void)setPrimitiveItems:(Item*)value;

- (NSMutableSet*)primitivePowers;
- (void)setPrimitivePowers:(NSMutableSet*)value;

@end

