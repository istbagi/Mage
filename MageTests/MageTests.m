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
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testGetImagesForWhale {
  bool done = false;
  static NSInteger foundImages = 0;
  static NSError * gError = nil;
  
  [[MGClient sharedInstance] getImagesWithCompletitionBlockKeywords:@"white whale" conpletitionBlock:^(SWGImage_search_results *output, NSError *error) {
    
    if(error) {
      
      gError = error;
    }
    if(output == nil){
      
      NSLog(@"failed to fetch images");
    }
    else {
      
      foundImages = [output.result_count integerValue];
    }
  }];
  
  NSDate * loopUntil = [NSDate dateWithTimeIntervalSinceNow:10];
  while(!done && [loopUntil timeIntervalSinceNow] > 0) {
    
    if(gError){
    
      XCTFail(@"got error %@", gError);
      done = true;
    }
      
    XCTAssertEqual(foundImages, 0, @"images not found");
    done = true;

  }
  
  XCTAssertEqual(foundImages, 0, @"failed to fetch valid result in 10 seconds");
}
@end
