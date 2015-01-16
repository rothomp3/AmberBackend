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
#import "GRMustache.h"
#import "DataController.h"

BOOL shouldKeepRunning = YES;        // global
int main(int argc, const char * argv[]) {
    @autoreleasepool {

        GCDWebServer* webServer = [[GCDWebServer alloc] init];
        
        [webServer addDefaultHandlerForMethod:@"GET"
                                 requestClass:[GCDWebServerRequest class]
                                 processBlock:^GCDWebServerResponse *(GCDWebServerRequest *request) {
                                     GRMustacheTemplate* template = [GRMustacheTemplate templateFromContentsOfFile:[@"~/storage/AmberTemplate.html.ms" stringByExpandingTildeInPath] error:nil];
                                     NSData* jsonData = [NSData dataWithContentsOfFile:[@"~/storage/Trevor.json" stringByExpandingTildeInPath]];
                                     NSDictionary* trevor = [NSJSONSerialization JSONObjectWithData:jsonData
                                                                                            options:NSJSONReadingAllowFragments
                                                                                              error:nil];
                                     NSString* renderedHTML = [template renderObject:trevor
                                                                               error:nil];
                                     
                                     return [GCDWebServerDataResponse responseWithHTML:renderedHTML];
                                 }];
        
        [webServer startWithPort:8081 bonjourName:@"amberBackend"];
        NSLog(@"Visit %@ in your web browser", webServer.serverURL);
        
        NSLog(@"Woo: %@", [[DataController sharedController] mainContext]);
        NSRunLoop *theRL = [NSRunLoop currentRunLoop];
        while (shouldKeepRunning && [theRL runMode:NSDefaultRunLoopMode beforeDate:[NSDate distantFuture]]);
        
    }
    return 0;
}
