#import "AttributeAuction.h"
#import "AmberBackend-Swift.h"

@interface AttributeAuction ()

// Private interface goes here.

@end

@implementation AttributeAuction

- (NSDictionary *)JSON
{
    NSMutableDictionary* dict = [NSMutableDictionary dictionary];
    
    for (NSString* key in self.entity.attributeKeys)
    {
        if (![key containsString:@"Rank"])
        {
            NSInteger stat = [[self valueForKey:key] integerValue];
            if (stat < 0)
            {
                dict[key] = [@"+" stringByAppendingString:@(ABS(stat)).description];
            }
            else
            {
                dict[key] = [self valueForKey:key];
            }
        }
        else
        {
            NSInteger rank = [[self valueForKey:key] integerValue];
            switch (rank)
            {
                case -1:
                {
                    dict[key] = @"Demon";
                }
                    break;
                    
                case -2:
                {
                    dict[key] = @"Chaos";
                }
                    break;
                    
                case -3:
                {
                    dict[key] = @"Human";
                }
                    break;
                    
                case -10:
                {
                    dict[key] = @"??";
                }
                    break;
                    
                case 0:
                {
                    dict[key] = @"Amber";
                }
                    break;
                    
                default:
                    dict[key] = [Converter convertToTh:rank];
                    break;
            }
        }
    }
    
    return dict;
}

@end
