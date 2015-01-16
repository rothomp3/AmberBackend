// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Item.h instead.

@import CoreData;

extern const struct ItemAttributes {
	__unsafe_unretained NSString *name;
	__unsafe_unretained NSString *pointCost;
} ItemAttributes;

extern const struct ItemRelationships {
	__unsafe_unretained NSString *character;
} ItemRelationships;

@class Character;

@interface ItemID : NSManagedObjectID {}
@end

@interface _Item : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) ItemID* objectID;

@property (nonatomic, strong) NSString* name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* pointCost;

@property (atomic) int16_t pointCostValue;
- (int16_t)pointCostValue;
- (void)setPointCostValue:(int16_t)value_;

//- (BOOL)validatePointCost:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) Character *character;

//- (BOOL)validateCharacter:(id*)value_ error:(NSError**)error_;

@end

@interface _Item (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;

- (NSNumber*)primitivePointCost;
- (void)setPrimitivePointCost:(NSNumber*)value;

- (int16_t)primitivePointCostValue;
- (void)setPrimitivePointCostValue:(int16_t)value_;

- (Character*)primitiveCharacter;
- (void)setPrimitiveCharacter:(Character*)value;

@end

