// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Colors.h instead.

@import CoreData;

extern const struct ColorsAttributes {
	__unsafe_unretained NSString *attributesBackgroundColor1;
	__unsafe_unretained NSString *attributesBackgroundColor2;
	__unsafe_unretained NSString *attributesTextColor1;
	__unsafe_unretained NSString *attributesTextColor2;
	__unsafe_unretained NSString *backgroundImage;
	__unsafe_unretained NSString *backgroundImageFilename;
	__unsafe_unretained NSString *footerTextColor;
	__unsafe_unretained NSString *headerBackgroundColor;
	__unsafe_unretained NSString *headerShadowColor;
	__unsafe_unretained NSString *headerTextColor;
	__unsafe_unretained NSString *headerTextShadowColor;
	__unsafe_unretained NSString *mainBackgroundColor;
	__unsafe_unretained NSString *mainShadowColor;
	__unsafe_unretained NSString *mainTextColor;
} ColorsAttributes;

extern const struct ColorsRelationships {
	__unsafe_unretained NSString *character;
} ColorsRelationships;

@class Character;

@interface ColorsID : NSManagedObjectID {}
@end

@interface _Colors : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) ColorsID* objectID;

@property (nonatomic, strong) NSString* attributesBackgroundColor1;

//- (BOOL)validateAttributesBackgroundColor1:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* attributesBackgroundColor2;

//- (BOOL)validateAttributesBackgroundColor2:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* attributesTextColor1;

//- (BOOL)validateAttributesTextColor1:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* attributesTextColor2;

//- (BOOL)validateAttributesTextColor2:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSData* backgroundImage;

//- (BOOL)validateBackgroundImage:(id*)value_ error:(NSError**)error_;

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

@property (nonatomic, strong) NSString* headerTextShadowColor;

//- (BOOL)validateHeaderTextShadowColor:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* mainBackgroundColor;

//- (BOOL)validateMainBackgroundColor:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* mainShadowColor;

//- (BOOL)validateMainShadowColor:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* mainTextColor;

//- (BOOL)validateMainTextColor:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) Character *character;

//- (BOOL)validateCharacter:(id*)value_ error:(NSError**)error_;

@end

@interface _Colors (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveAttributesBackgroundColor1;
- (void)setPrimitiveAttributesBackgroundColor1:(NSString*)value;

- (NSString*)primitiveAttributesBackgroundColor2;
- (void)setPrimitiveAttributesBackgroundColor2:(NSString*)value;

- (NSString*)primitiveAttributesTextColor1;
- (void)setPrimitiveAttributesTextColor1:(NSString*)value;

- (NSString*)primitiveAttributesTextColor2;
- (void)setPrimitiveAttributesTextColor2:(NSString*)value;

- (NSData*)primitiveBackgroundImage;
- (void)setPrimitiveBackgroundImage:(NSData*)value;

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

- (NSString*)primitiveHeaderTextShadowColor;
- (void)setPrimitiveHeaderTextShadowColor:(NSString*)value;

- (NSString*)primitiveMainBackgroundColor;
- (void)setPrimitiveMainBackgroundColor:(NSString*)value;

- (NSString*)primitiveMainShadowColor;
- (void)setPrimitiveMainShadowColor:(NSString*)value;

- (NSString*)primitiveMainTextColor;
- (void)setPrimitiveMainTextColor:(NSString*)value;

- (Character*)primitiveCharacter;
- (void)setPrimitiveCharacter:(Character*)value;

@end

