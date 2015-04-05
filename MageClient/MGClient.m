//
//  MGClient.m
//  Mage
//
//  Created by Istvan Bagi on 30/03/2015.
//  Copyright (c) 2015 Bagi Istvan. All rights reserved.
//

#import "SynthesizeSingleton.h"
#import "MGClient.h"
#import "SWGApiClient.h"
#import "SWGSearchApi.h"

static NSString *const API_KEY = @"yjtgnq6hnuxvestxq58jmd5x";
static NSString *const Shared_secret = @"yVkwtfGbtJcdBeXZR6bZNDswspm29gHHa8ATmPeaj92PQ";

static NSString * basePath = @"https://api.gettyimages.com";

static NSString *authorisation;

@implementation MGClient

SYNTHESIZE_SINGLETON_FOR_CLASS(MGClient);

- (void)getAuthorisation:(void(^)(NSError *error))block {
  
  NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/oauth2/token", basePath];
  
  SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];
  client.parameterEncoding = AFFormURLParameterEncoding;
  NSString* requestContentType = @"application/x-www-form-urlencoded";
  NSString* responseContentType = @"application/json";
  NSDictionary *queryParams = @{@"client_id": API_KEY, @"client_secret": Shared_secret, @"Api-Key": API_KEY, @"Authorization": @"Basic" , @"grant_type": @"client_credentials"};
  
  [client dictionary:requestUrl
              method:@"POST"
         queryParams:[NSMutableDictionary dictionary]
                body:queryParams
        headerParams:nil
  requestContentType:requestContentType
 responseContentType:responseContentType
     completionBlock:^void(NSDictionary *resp, NSError *error) {
       
       NSLog(@" %@", resp);
       NSLog(@"-----------------ERROR--------------------\n%@", error);
       
       if (!error) {
         
         NSString *token = resp[@"access_token"];
         NSString *type = resp[@"token_type"];
         int expiresInSeconds = [resp[@"expires_in"] intValue];
         
         NSTimer *toketLifeTime = [NSTimer timerWithTimeInterval:expiresInSeconds
                                                          target:self
                                                        selector:@selector(clearAuthorization:)
                                                        userInfo:nil
                                                         repeats:NO];
         [[NSRunLoop currentRunLoop] addTimer:toketLifeTime forMode:NSDefaultRunLoopMode];
         authorisation = [NSString stringWithFormat:@"%@ %@", type, token];
       }
       
       block(error);
     }
   ];
}

- (void)clearAuthorization:(NSTimer *)timer {
  
  authorisation = nil;
}

- (void)getImagesWithCompletitionBlockKeywords:(NSString *)keywords conpletitionBlock:(void(^)(SWGImage_search_results *output, NSError *error))block {
  
  if (!authorisation) {
    
    [self getAuthorisation:^(NSError *error) {
      
      if (!error) {
        
        [self _getImagesWithCompletitionBlockKeywords:keywords conpletitionBlock:^(SWGImage_search_results *output, NSError *error) {
          
          block(output, error);
        }];
      }
      else {
    
        block(nil, [NSError errorWithDomain:@"Auth" code:1 userInfo:@{@1: @"Not authorised"}]);
      }
    }];
  }
  else {
    
    [self _getImagesWithCompletitionBlockKeywords:keywords conpletitionBlock:^(SWGImage_search_results *output, NSError *error) {
      
      block(output, error);
    }];
  }
}

- (void)_getImagesWithCompletitionBlockKeywords:(NSString *)keywords conpletitionBlock:(void(^)(SWGImage_search_results *output, NSError *error))block {
  
  [[SWGSearchApi alloc] Search_GetImagesByPhraseWithCompletionBlock:API_KEY
                                                     AcceptLanguage:nil
                                                      Authorization:authorisation
                                                      age_of_people:nil
                                                            artists:nil
                                                   collection_codes:nil
                                            collections_filter_type:nil
                                                       compositions:nil
                                                          date_from:nil
                                                            date_to:nil
                                                 embed_content_only:nil
                                                          ethnicity:nil
                                                          event_ids:nil
                                                     exclude_nudity:nil
                                                             fields:nil
                                                         file_types:nil
                                                   graphical_styles:nil
                                                        keyword_ids:nil
                                                     license_models:nil
                                                   number_of_people:nil
                                                       orientations:nil
                                                               page:nil
                                                          page_size:nil
                                                             phrase:keywords
                                              prestige_content_only:nil
                                                      product_types:nil
                                                         sort_order:nil
                                                 specific_locations:nil
                                                    specific_people:nil
                                                  completionHandler:^(SWGImage_search_results *output, NSError *error) {
                                                    
                                                    NSLog(@"%@", error);
                                                    NSLog(@"%@", output);
                                                    block(output, error);
                                                  }];
  
}

@end
