// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Character.h instead.

@import CoreData;

extern const struct CharacterAttributes {
	__unsafe_unretained NSString *bio;
	__unsafe_unretained NSString *characterName;
	__unsafe_unretained NSString *image;
	__unsafe_unretained NSString *stuff;
	__unsafe_unretained NSString *titles;
} CharacterAttributes;

extern const struct CharacterRelationships {
	__unsafe_unretained NSString *attributeAuction;
	__unsafe_unretained NSString *colors;
	__unsafe_unretained NSString *items;
	__unsafe_unretained NSString *powers;
} CharacterRelationships;

@class AttributeAuction;
@class Colors;
@class Item;
@class Power;

@interface CharacterID : NSManagedObjectID {}
@end

@interface _Character : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) CharacterID* objectID;

@property (nonatomic, strong) NSString* bio;

//- (BOOL)validateBio:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* characterName;

//- (BOOL)validateCharacterName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSData* image;

//- (BOOL)validateImage:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* stuff;

@property (atomic) int16_t stuffValue;
- (int16_t)stuffValue;
- (void)setStuffValue:(int16_t)value_;

//- (BOOL)validateStuff:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* titles;

//- (BOOL)validateTitles:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) AttributeAuction *attributeAuction;

//- (BOOL)validateAttributeAuction:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) Colors *colors;

//- (BOOL)validateColors:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *items;

- (NSMutableSet*)itemsSet;

@property (nonatomic, strong) NSSet *powers;

- (NSMutableSet*)powersSet;

@end

@interface _Character (ItemsCoreDataGeneratedAccessors)
- (void)addItems:(NSSet*)value_;
- (void)removeItems:(NSSet*)value_;
- (void)addItemsObject:(Item*)value_;
- (void)removeItemsObject:(Item*)value_;

@end

@interface _Character (PowersCoreDataGeneratedAccessors)
- (void)addPowers:(NSSet*)value_;
- (void)removePowers:(NSSet*)value_;
- (void)addPowersObject:(Power*)value_;
- (void)removePowersObject:(Power*)value_;

@end

@interface _Character (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveBio;
- (void)setPrimitiveBio:(NSString*)value;

- (NSString*)primitiveCharacterName;
- (void)setPrimitiveCharacterName:(NSString*)value;

- (NSData*)primitiveImage;
- (void)setPrimitiveImage:(NSData*)value;

- (NSNumber*)primitiveStuff;
- (void)setPrimitiveStuff:(NSNumber*)value;

- (int16_t)primitiveStuffValue;
- (void)setPrimitiveStuffValue:(int16_t)value_;

- (NSString*)primitiveTitles;
- (void)setPrimitiveTitles:(NSString*)value;

- (AttributeAuction*)primitiveAttributeAuction;
- (void)setPrimitiveAttributeAuction:(AttributeAuction*)value;

- (Colors*)primitiveColors;
- (void)setPrimitiveColors:(Colors*)value;

- (NSMutableSet*)primitiveItems;
- (void)setPrimitiveItems:(NSMutableSet*)value;

- (NSMutableSet*)primitivePowers;
- (void)setPrimitivePowers:(NSMutableSet*)value;

@end

