// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Power.h instead.

@import CoreData;

extern const struct PowerAttributes {
	__unsafe_unretained NSString *name;
	__unsafe_unretained NSString *pointCost;
} PowerAttributes;

extern const struct PowerRelationships {
	__unsafe_unretained NSString *characters;
} PowerRelationships;

@class Character;

@interface PowerID : NSManagedObjectID {}
@end

@interface _Power : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) PowerID* objectID;

@property (nonatomic, strong) NSString* name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* pointCost;

@property (atomic) int16_t pointCostValue;
- (int16_t)pointCostValue;
- (void)setPointCostValue:(int16_t)value_;

//- (BOOL)validatePointCost:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *characters;

- (NSMutableSet*)charactersSet;

@end

@interface _Power (CharactersCoreDataGeneratedAccessors)
- (void)addCharacters:(NSSet*)value_;
- (void)removeCharacters:(NSSet*)value_;
- (void)addCharactersObject:(Character*)value_;
- (void)removeCharactersObject:(Character*)value_;

@end

@interface _Power (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;

- (NSNumber*)primitivePointCost;
- (void)setPrimitivePointCost:(NSNumber*)value;

- (int16_t)primitivePointCostValue;
- (void)setPrimitivePointCostValue:(int16_t)value_;

- (NSMutableSet*)primitiveCharacters;
- (void)setPrimitiveCharacters:(NSMutableSet*)value;

@end

