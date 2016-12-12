//
//  MageTests.m
//  MageTests
//
//  Created by Bagi Istvan on 22/03/15.
//  Copyright (c) 2015 Bagi Istvan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "MGClient.h"

@interface MageTests : XCTestCase

@end

@implementation MageTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testGetImagesForWhale {
    
    XCTestExpectation *expectation = [self expectationWithDescription:@"Download search result with keyword."];
    
    [[MGClient sharedInstance] getImagesWithCompletitionBlockKeywords:@"white whale"
                                                    conpletitionBlock:^(SWGImage_search_results *output, NSError *error) {
        
        XCTAssertNotNil(output, "Image search result should not be nil!");
        XCTAssertNil(error, "Error happened during image search!");
                                                        
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:10.0 handler:^(NSError *error) {
        
        if (error != nil) {
            
            NSLog(@"Error: %@", error.localizedDescription);
        }
    }];
}
@end
