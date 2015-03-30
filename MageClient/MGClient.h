//
//  MGClient.h
//  Mage
//
//  Created by Istvan Bagi on 30/03/2015.
//  Copyright (c) 2015 Bagi Istvan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SWGImage_search_results.h"


@interface MGClient : NSObject

+ (instancetype)sharedInstance;

- (void)getImagesWithCompletitionBlockKeywords:(NSString *)keywords conpletitionBlock:(void(^)(SWGImage_search_results *output, NSError *error))block;
@end
