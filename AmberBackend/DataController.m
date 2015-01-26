//
//  DataController.m
//  AmberBackend
//

#import "DataController.h"
#import "WTAData.h"

@interface DataController ()
@end

@implementation DataController
+ (DataController*)sharedController
{
    static DataController* shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[self alloc] initWithModelNamed:@"AmberBackendModel"];
    });
    
    return shared;
}

@end
