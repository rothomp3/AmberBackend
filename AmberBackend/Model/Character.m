#import "Character.h"
#import "AttributeAuction.h"
#import "Colors.h"
#import "NSManagedObject+JSON.h"
#import "Item.h"
#import "Power.h"

@interface Character ()

// Private interface goes here.

@end

@implementation Character

- (NSDictionary*)JSON
{
    NSMutableDictionary* dict = [NSMutableDictionary dictionary];
    
    dict[@"character_name"] = self.characterName;
    if (self.titles)
    {
        dict[@"character_titles"] = self.titles;
    }
    
    if (self.stuff)
    {
        dict[@"stuff"] = self.stuff;
    }
    
    NSString* stuffType = nil;
    if (self.stuffValue > 0)
    {
        stuffType = @"Good";
    }
    else if (self.stuffValue < 0)
    {
        stuffType = @"Bad";
    }
    else
    {
        stuffType = @"Neutral";
    }
    
    dict[@"stuff_type"] = stuffType;
    
    if (self.attributeAuction)
    {
        dict[@"attributeAuction"] = self.attributeAuction.JSON;
    }
    
    if (self.colors)
    {
        dict[@"colors"] = self.colors.JSON;
    }
    
    NSMutableArray* items = [NSMutableArray array];
    for (Item* item in self.items)
    {
        [items addObject:item.JSON];
    }
    dict[@"items"] = items;
    
    NSMutableArray* powers = [NSMutableArray array];
    for (Power* power in self.powers)
    {
        [powers addObject:power.JSON];
    }
    dict[@"powers"] = powers;
    
    if (self.bio)
    {
        dict[@"bio"] = self.bio;
    }
    
    if (self.image)
    {
        NSString* imageString = [self.image base64EncodedStringWithOptions:0];
        NSString* resultString = [NSString stringWithFormat:@"data:image/jpeg;base64,%@", imageString];
        dict[@"image"] = resultString;
    }
    
    return dict;
}

- (NSString *)description
{
    return self.JSON.description;
}
@end
