#import "Colors.h"

@interface Colors ()

// Private interface goes here.

@end

@implementation Colors
- (NSString*)convertKey:(NSString*)key
{
    NSMutableString *str2 = [NSMutableString string];
    
    for (NSInteger i=0; i<key.length; i++){
        NSString *ch = [key substringWithRange:NSMakeRange(i, 1)];
        if ([ch rangeOfCharacterFromSet:[NSCharacterSet uppercaseLetterCharacterSet]].location != NSNotFound) {
            [str2 appendString:@"_"];
        }
        [str2 appendString:ch.lowercaseString];
    }
    
    return str2;
}

- (NSDictionary *)JSON
{
    NSMutableDictionary* dict = [NSMutableDictionary dictionary];
    
    for (NSString* key in self.entity.attributeKeys)
    {
        if (![key isEqualToString:@"backgroundImage"] && ![key isEqualToString:@"backgroundImageFilename"])
        {
            id value = [self valueForKey:key];
            NSString* realKey = [self convertKey:key];

            if (value)
            {
                dict[realKey] = value;
            }
            else
            {
                dict[realKey] = @"default";
            }
        }
        else
        {
            NSString* imageString = [self.backgroundImage base64EncodedStringWithOptions:0];
            NSString* resultString = [NSString stringWithFormat:@"data:image/jpeg;base64,%@", imageString];
            dict[@"background_image_filename"] = resultString;
        }
    }
    
    return dict;
}

@end
