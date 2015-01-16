//
//  DataController.m
//  AmberBackend
//

#import "DataController.h"
#import "WTAData.h"

@interface DataController ()
@property (strong, nonatomic) WTAData* data;
@end

@implementation DataController
+ (DataController*)sharedController
{
    static DataController* shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[self alloc] init];
    });
    
    return shared;
}

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _data = [[WTAData alloc] initWithModelNamed:@"AmberBackendModel"];
    }
    
    return self;
}

- (NSManagedObjectContext*)mainContext
{
    return self.data.mainContext;
}
@end
