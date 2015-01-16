//
//  DataController.h
//  AmberBackend
//

@import Foundation;
@import CoreData;

@interface DataController : NSObject
+ (DataController*)sharedController;

@property (strong, nonatomic, readonly) NSManagedObjectContext* mainContext;

@end
