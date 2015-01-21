//
//  main.m
//  AmberBackend
//
//  Created by Robert Thompson on 1/15/15.
//  Copyright (c) 2015 WillowTree Apps. All rights reserved.
//

@import Foundation;
@import CoreData;

#import "GCDWebServer.h"
#import "GCDWebServerDataResponse.h"
#import "GCDWebServerURLEncodedFormRequest.h"
#import "GRMustache.h"
#import "DataController.h"
#import "WTAData.h"
#import "NSManagedObject+WTAData.h"
#import "Model.h"
#import "AmberBackend-Swift.h"

BOOL shouldKeepRunning = YES;        // global
int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSManagedObjectContext* mainContext = [[DataController sharedController] mainContext];
        
        Character* trevor = nil;
        
        NSFetchRequest* request = [Character fetchRequestWithPredicate:[NSPredicate predicateWithFormat:@"characterName BEGINSWITH %@", @"Trevor"]];
        trevor = [mainContext executeFetchRequest:request error:nil].firstObject;
        if (!trevor)
        {
            trevor = [Character createEntityInContext:mainContext];
            
            NSData* jsonData = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Trevor"
                                                                                              ofType:@"json"]];
            NSDictionary* trevorDict = [NSJSONSerialization JSONObjectWithData:jsonData
                                                                       options:NSJSONReadingAllowFragments
                                                                         error:nil];
            for (NSString* key in trevorDict.allKeys)
            {
                NSString* realKey = [Converter convertToCamelCase:key];
                id value = trevorDict[key];
                if ([realKey isEqualToString:@"characterTitles"])
                {
                    realKey = @"titles";
                }
                if ([realKey isEqualToString:@"stuffType"])
                {
                    continue;
                }
                else if ([value isKindOfClass:[NSString class]] || [value isKindOfClass:[NSNumber class]])
                {
                    [trevor setValue:value forKey:realKey];
                }
                
                if ([realKey isEqualToString:@"colors"])
                {
                    NSDictionary* colorDict = (NSDictionary*)value;
                    Colors* colors = [Colors createEntityInContext:mainContext];
                    for (NSString* colorKey in colorDict.allKeys)
                    {
                        
                        NSString* realColorKey = [Converter convertToCamelCase:colorKey];
                        if ([realColorKey isEqualToString:@"backgroundImageFilename"])
                        {
                            NSData* imageData = [NSData dataWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"bark" withExtension:@"jpg"]];
                            colors.backgroundImage = imageData;
                        }
                        else
                        {
                            [colors setValue:colorDict[colorKey] forKey:realColorKey];
                        }
                    }
                    
                    trevor.colors = colors;
                }
                else if ([realKey isEqualToString:@"attributeAuction"])
                {
                    AttributeAuction* auction = [AttributeAuction createEntityInContext:mainContext];
                    NSDictionary* auctionDict = (NSDictionary*)value;
                    for (NSString* auctionKey in auctionDict.allKeys)
                    {
                        NSString* realAuctionKey = [Converter convertToCamelCase:auctionKey];
                        [auction setValue:auctionDict[auctionKey] forKey:realAuctionKey];
                    }
                    
                    trevor.attributeAuction = auction;
                }
                else if ([realKey isEqualToString:@"items"])
                {
                    NSMutableSet* items = [NSMutableSet set];
                    for (NSDictionary* itemDict in value)
                    {
                        Item* item = [Item createEntityInContext:mainContext];
                        for (NSString* itemKey in itemDict.allKeys)
                        {
                            NSString* realItemKey = [Converter convertToCamelCase:itemKey];
                            [item setValue:itemDict[itemKey] forKey:realItemKey];
                        }
                        [items addObject:item];
                    }
                    
                    trevor.items = items;
                }
                else if ([realKey isEqualToString:@"powers"])
                {
                    NSMutableSet* powers = [NSMutableSet set];
                    for (NSDictionary* powerDict in value)
                    {
                        Power* power = [Power createEntityInContext:mainContext];
                        for (NSString* powerKey in powerDict.allKeys)
                        {
                            NSString* realPowerKey = [Converter convertToCamelCase:powerKey];
                            [power setValue:powerDict[powerKey] forKey:realPowerKey];
                        }
                        [powers addObject:power];
                    }
                    
                    trevor.powers = powers;
                }
                
                NSData* trevorImageData = [[NSData alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Trevor" withExtension:@"jpg"]];
                trevor.image = trevorImageData;
            }
            
            [mainContext save:nil];
        }
        NSLog(@"%@", trevor);
        
        GCDWebServer* webServer = [[GCDWebServer alloc] init];
        
        [webServer addHandlerForMethod:@"GET"
                                  pathRegex:@"/[a-zA-Z].*"
                          requestClass:[GCDWebServerRequest class]
                          processBlock:^GCDWebServerResponse *(GCDWebServerRequest *request) {
                              
                              NSString* characterName = [request.path.pathComponents[1] stringByReplacingOccurrencesOfString:@"_" withString:@" "];
                              GRMustacheTemplate* template = [GRMustacheTemplate templateFromContentsOfFile: [[NSBundle mainBundle] pathForResource:@"AmberTemplate.html"
                                                                                                                                             ofType:@"ms"]
                                                                                                      error:nil];
                              NSFetchRequest* fetchRequest = [Character fetchRequestWithPredicate:[NSPredicate predicateWithFormat:@"characterName CONTAINS[cd] %@", characterName]];
                              Character* character = [mainContext executeFetchRequest:fetchRequest error:nil].firstObject;
                              if (character)
                              {
                                  NSDictionary* characterDict = character.JSON;
                                  
                                  NSString* renderedHTML = [template renderObject:characterDict
                                                                            error:nil];
                                  
                                  return [GCDWebServerDataResponse responseWithHTML:renderedHTML];
                              }
                              else
                              {
                                  NSString* htmlTemplate = [NSString stringWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"newCharacterForm"
                                                                                                                     withExtension:@"html"]
                                                                                    encoding:NSUTF8StringEncoding
                                                                                       error:nil];
                                  NSString* html = [NSString stringWithFormat:htmlTemplate, characterName, characterName];
                                  
                                  return [GCDWebServerDataResponse responseWithHTML:html];
                              }
                          }];
        
        NSNumberFormatter* formatter = [[NSNumberFormatter alloc] init];
        formatter.numberStyle = NSNumberFormatterDecimalStyle;
        
        [webServer addHandlerForMethod:@"POST"
                                  pathRegex:@"/[a-zA-Z].*"
                          requestClass:[GCDWebServerURLEncodedFormRequest class]
                     asyncProcessBlock:^(GCDWebServerRequest *request, GCDWebServerCompletionBlock completionBlock) {
                         NSDictionary* arguments = [(GCDWebServerURLEncodedFormRequest*)request arguments];
                         NSString* name = arguments[@"characterName"];
                         NSNumber* strengthRank = [formatter numberFromString: arguments[@"strengthRank"]];
                         NSString* html = [NSString stringWithFormat:@"<html><body><p>%@</p><p>%@</p></body></html>", name, strengthRank];
                         completionBlock([GCDWebServerDataResponse responseWithHTML:html]);
                     }];
        
        [webServer startWithPort:8081 bonjourName:@"amberBackend"];
        NSLog(@"Visit %@ in your web browser", webServer.serverURL);
        
        NSLog(@"Woo: %@", [[DataController sharedController] mainContext]);
        NSRunLoop *theRL = [NSRunLoop currentRunLoop];
        while (shouldKeepRunning && [theRL runMode:NSDefaultRunLoopMode beforeDate:[NSDate distantFuture]]);
        
    }
    return 0;
}
