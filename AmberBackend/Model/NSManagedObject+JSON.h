//
//  NSManagedObject+JSON.h
//  AmberBackend
//
//  Created by Robert Thompson on 1/16/15.
//  Copyright (c) 2015 WillowTree Apps. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface NSManagedObject (JSON)
@property (strong, nonatomic, readonly) NSDictionary* JSON;
@end
