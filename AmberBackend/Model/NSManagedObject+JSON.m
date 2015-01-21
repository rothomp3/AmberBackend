//
//  NSManagedObject+JSON.m
//  AmberBackend
//
//  Created by Robert Thompson on 1/16/15.
//  Copyright (c) 2015 WillowTree Apps. All rights reserved.
//

#import "NSManagedObject+JSON.h"

@implementation NSManagedObject (JSON)
- (NSDictionary *)JSON
{
    NSMutableDictionary* dict = [NSMutableDictionary dictionary];
    
    for (NSString* key in self.entity.attributeKeys)
    {
        dict[key] = [self valueForKey:key];
    }
    
    return dict;
}
@end
