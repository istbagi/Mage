#import "SWGSearchApi.h"
#import "SWGFile.h"
#import "SWGImage_search_results.h"
#import "SWGEvents_result.h"
#import "SWGDate.h"
#import "SWGEditorial_video_search_results.h"
#import "SWGEditorial_image_search_results.h"
#import "SWGCreative_image_search_results.h"
#import "SWGVideo_search_results.h"
#import "SWGCreative_video_search_results.h"



@implementation SWGSearchApi
static NSString * basePath = @"https://api.gettyimages.com/";

+(SWGSearchApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static SWGSearchApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[SWGSearchApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(void) setBasePath:(NSString*)path {
    basePath = path;
}

+(NSString*) getBasePath {
    return basePath;
}

-(SWGApiClient*) apiClient {
    return [SWGApiClient sharedClientFromPool:basePath];
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [[self apiClient] setHeaderValue:value forKey:key];
}

-(id) init {
    self = [super init];
    [self apiClient];
    return self;
}

-(void) setHeaderValue:(NSString*) value
           forKey:(NSString*)key {
    [[self apiClient] setHeaderValue:value forKey:key];
}

-(unsigned long) requestQueueSize {
    return [SWGApiClient requestQueueSize];
}


-(NSNumber*) Search_GetSimilarImagesWithCompletionBlock:(NSString*) ApiKey        
            AcceptLanguage :(NSString*) AcceptLanguage         
            Authorization:(NSString*) Authorization        
            _id:(NSString*) _id        
            fields:(NSArray*) fields        
            page:(NSNumber*) page        
            page_size:(NSNumber*) page_size        
        completionHandler: (void (^)(SWGImage_search_results* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/images/{id}/similar", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"id", @"}"]] withString: [SWGApiClient escape:_id]];
    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(fields != nil)
        queryParams[@"fields"] = fields;if(page != nil)
        queryParams[@"page"] = page;if(page_size != nil)
        queryParams[@"page_size"] = page_size;
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    if(ApiKey != nil)
        headerParams[@"ApiKey"] = ApiKey;if(AcceptLanguage  != nil)
        headerParams[@"AcceptLanguage "] = AcceptLanguage ;if(Authorization != nil)
        headerParams[@"Authorization"] = Authorization;

    id bodyDictionary = nil;
    
    
    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    

    
    
    
    return [client dictionary:requestUrl 
                              method:@"GET" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);
                            
                            return;
                        }
                        
                        SWGImage_search_results *result = nil;
                        if (data) {
                            result = [[SWGImage_search_results    alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);
                        
                    }];
    

}

-(NSNumber*) Search_GetEventsWithCompletionBlock:(NSString*) ApiKey        
            AcceptLanguage :(NSString*) AcceptLanguage         
            Authorization:(NSString*) Authorization        
            editorial_segment:(NSString*) editorial_segment        
            date_from:(SWGDate*) date_from        
            date_to:(SWGDate*) date_to        
            fields:(NSArray*) fields        
        completionHandler: (void (^)(SWGEvents_result* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/search/events", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(editorial_segment != nil)
        queryParams[@"editorial_segment"] = editorial_segment;if(date_from != nil)
        queryParams[@"date_from"] = date_from;if(date_to != nil)
        queryParams[@"date_to"] = date_to;if(fields != nil)
        queryParams[@"fields"] = fields;
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    if(ApiKey != nil)
        headerParams[@"ApiKey"] = ApiKey;if(AcceptLanguage  != nil)
        headerParams[@"AcceptLanguage "] = AcceptLanguage ;if(Authorization != nil)
        headerParams[@"Authorization"] = Authorization;

    id bodyDictionary = nil;
    
    
    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    

    
    
    
    return [client dictionary:requestUrl 
                              method:@"GET" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);
                            
                            return;
                        }
                        
                        SWGEvents_result *result = nil;
                        if (data) {
                            result = [[SWGEvents_result    alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);
                        
                    }];
    

}

-(NSNumber*) Search_GetImagesByPhraseWithCompletionBlock:(NSString*) ApiKey        
            AcceptLanguage :(NSString*) AcceptLanguage         
            Authorization:(NSString*) Authorization        
            age_of_people:(NSArray*) age_of_people        
            artists:(NSString*) artists        
            collection_codes:(NSArray*) collection_codes        
            collections_filter_type:(NSString*) collections_filter_type        
            compositions:(NSArray*) compositions        
            date_from:(SWGDate*) date_from        
            date_to:(SWGDate*) date_to        
            embed_content_only:(NSNumber*) embed_content_only        
            ethnicity:(NSArray*) ethnicity        
            event_ids:(NSArray*) event_ids        
            exclude_nudity:(NSNumber*) exclude_nudity        
            fields:(NSArray*) fields        
            file_types:(NSArray*) file_types        
            graphical_styles:(NSArray*) graphical_styles        
            keyword_ids:(NSArray*) keyword_ids        
            license_models:(NSArray*) license_models        
            number_of_people:(NSArray*) number_of_people        
            orientations:(NSArray*) orientations        
            page:(NSNumber*) page        
            page_size:(NSNumber*) page_size        
            phrase:(NSString*) phrase        
            prestige_content_only:(NSNumber*) prestige_content_only        
            product_types:(NSArray*) product_types        
            sort_order:(NSString*) sort_order        
            specific_locations:(NSArray*) specific_locations        
            specific_people:(NSArray*) specific_people        
        completionHandler: (void (^)(SWGImage_search_results* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/search/images", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(age_of_people != nil)
        queryParams[@"age_of_people"] = age_of_people;if(artists != nil)
        queryParams[@"artists"] = artists;if(collection_codes != nil)
        queryParams[@"collection_codes"] = collection_codes;if(collections_filter_type != nil)
        queryParams[@"collections_filter_type"] = collections_filter_type;if(compositions != nil)
        queryParams[@"compositions"] = compositions;if(date_from != nil)
        queryParams[@"date_from"] = date_from;if(date_to != nil)
        queryParams[@"date_to"] = date_to;if(embed_content_only != nil)
        queryParams[@"embed_content_only"] = embed_content_only;if(ethnicity != nil)
        queryParams[@"ethnicity"] = ethnicity;if(event_ids != nil)
        queryParams[@"event_ids"] = event_ids;if(exclude_nudity != nil)
        queryParams[@"exclude_nudity"] = exclude_nudity;if(fields != nil)
        queryParams[@"fields"] = fields;if(file_types != nil)
        queryParams[@"file_types"] = file_types;if(graphical_styles != nil)
        queryParams[@"graphical_styles"] = graphical_styles;if(keyword_ids != nil)
        queryParams[@"keyword_ids"] = keyword_ids;if(license_models != nil)
        queryParams[@"license_models"] = license_models;if(number_of_people != nil)
        queryParams[@"number_of_people"] = number_of_people;if(orientations != nil)
        queryParams[@"orientations"] = orientations;if(page != nil)
        queryParams[@"page"] = page;if(page_size != nil)
        queryParams[@"page_size"] = page_size;if(phrase != nil)
        queryParams[@"phrase"] = phrase;if(prestige_content_only != nil)
        queryParams[@"prestige_content_only"] = prestige_content_only;if(product_types != nil)
        queryParams[@"product_types"] = product_types;if(sort_order != nil)
        queryParams[@"sort_order"] = sort_order;if(specific_locations != nil)
        queryParams[@"specific_locations"] = specific_locations;if(specific_people != nil)
        queryParams[@"specific_people"] = specific_people;
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    if(ApiKey != nil)
        headerParams[@"ApiKey"] = ApiKey;if(AcceptLanguage  != nil)
        headerParams[@"AcceptLanguage "] = AcceptLanguage ;if(Authorization != nil)
        headerParams[@"Authorization"] = Authorization;

    id bodyDictionary = nil;
    
    
    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    

    
    
    
    return [client dictionary:requestUrl 
                              method:@"GET" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);
                            
                            return;
                        }
                        
                        SWGImage_search_results *result = nil;
                        if (data) {
                            result = [[SWGImage_search_results    alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);
                        
                    }];
    

}

-(NSNumber*) Search_GetCreativeImagesByPhraseWithCompletionBlock:(NSString*) ApiKey        
            AcceptLanguage :(NSString*) AcceptLanguage         
            Authorization:(NSString*) Authorization        
            age_of_people:(NSArray*) age_of_people        
            artists:(NSString*) artists        
            collection_codes:(NSArray*) collection_codes        
            collections_filter_type:(NSString*) collections_filter_type        
            compositions:(NSArray*) compositions        
            embed_content_only:(NSNumber*) embed_content_only        
            ethnicity:(NSArray*) ethnicity        
            exclude_nudity:(NSNumber*) exclude_nudity        
            fields:(NSArray*) fields        
            file_types:(NSArray*) file_types        
            graphical_styles:(NSArray*) graphical_styles        
            keyword_ids:(NSArray*) keyword_ids        
            license_models:(NSArray*) license_models        
            number_of_people:(NSArray*) number_of_people        
            orientations:(NSArray*) orientations        
            page:(NSNumber*) page        
            page_size:(NSNumber*) page_size        
            phrase:(NSString*) phrase        
            prestige_content_only:(NSNumber*) prestige_content_only        
            product_types:(NSArray*) product_types        
            sort_order:(NSString*) sort_order        
            specific_locations:(NSArray*) specific_locations        
            specific_people:(NSArray*) specific_people        
        completionHandler: (void (^)(SWGCreative_image_search_results* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/search/images/creative", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(age_of_people != nil)
        queryParams[@"age_of_people"] = age_of_people;if(artists != nil)
        queryParams[@"artists"] = artists;if(collection_codes != nil)
        queryParams[@"collection_codes"] = collection_codes;if(collections_filter_type != nil)
        queryParams[@"collections_filter_type"] = collections_filter_type;if(compositions != nil)
        queryParams[@"compositions"] = compositions;if(embed_content_only != nil)
        queryParams[@"embed_content_only"] = embed_content_only;if(ethnicity != nil)
        queryParams[@"ethnicity"] = ethnicity;if(exclude_nudity != nil)
        queryParams[@"exclude_nudity"] = exclude_nudity;if(fields != nil)
        queryParams[@"fields"] = fields;if(file_types != nil)
        queryParams[@"file_types"] = file_types;if(graphical_styles != nil)
        queryParams[@"graphical_styles"] = graphical_styles;if(keyword_ids != nil)
        queryParams[@"keyword_ids"] = keyword_ids;if(license_models != nil)
        queryParams[@"license_models"] = license_models;if(number_of_people != nil)
        queryParams[@"number_of_people"] = number_of_people;if(orientations != nil)
        queryParams[@"orientations"] = orientations;if(page != nil)
        queryParams[@"page"] = page;if(page_size != nil)
        queryParams[@"page_size"] = page_size;if(phrase != nil)
        queryParams[@"phrase"] = phrase;if(prestige_content_only != nil)
        queryParams[@"prestige_content_only"] = prestige_content_only;if(product_types != nil)
        queryParams[@"product_types"] = product_types;if(sort_order != nil)
        queryParams[@"sort_order"] = sort_order;if(specific_locations != nil)
        queryParams[@"specific_locations"] = specific_locations;if(specific_people != nil)
        queryParams[@"specific_people"] = specific_people;
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    if(ApiKey != nil)
        headerParams[@"ApiKey"] = ApiKey;if(AcceptLanguage  != nil)
        headerParams[@"AcceptLanguage "] = AcceptLanguage ;if(Authorization != nil)
        headerParams[@"Authorization"] = Authorization;

    id bodyDictionary = nil;
    
    
    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    

    
    
    
    return [client dictionary:requestUrl 
                              method:@"GET" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);
                            
                            return;
                        }
                        
                        SWGCreative_image_search_results *result = nil;
                        if (data) {
                            result = [[SWGCreative_image_search_results    alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);
                        
                    }];
    

}

-(NSNumber*) Search_GetEditorialImagesByPhraseWithCompletionBlock:(NSString*) ApiKey        
            AcceptLanguage :(NSString*) AcceptLanguage         
            Authorization:(NSString*) Authorization        
            age_of_people:(NSArray*) age_of_people        
            artists:(NSString*) artists        
            collection_codes:(NSArray*) collection_codes        
            collections_filter_type:(NSString*) collections_filter_type        
            compositions:(NSArray*) compositions        
            date_from:(SWGDate*) date_from        
            date_to:(SWGDate*) date_to        
            editorial_segments:(NSArray*) editorial_segments        
            embed_content_only:(NSNumber*) embed_content_only        
            entity_uris:(NSArray*) entity_uris        
            ethnicity:(NSArray*) ethnicity        
            event_ids:(NSArray*) event_ids        
            exclude_nudity:(NSNumber*) exclude_nudity        
            fields:(NSArray*) fields        
            file_types:(NSArray*) file_types        
            graphical_styles:(NSArray*) graphical_styles        
            keyword_ids:(NSArray*) keyword_ids        
            number_of_people:(NSArray*) number_of_people        
            orientations:(NSArray*) orientations        
            page:(NSNumber*) page        
            page_size:(NSNumber*) page_size        
            phrase:(NSString*) phrase        
            product_types:(NSArray*) product_types        
            sort_order:(NSString*) sort_order        
            specific_locations:(NSArray*) specific_locations        
            specific_people:(NSArray*) specific_people        
        completionHandler: (void (^)(SWGEditorial_image_search_results* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/search/images/editorial", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(age_of_people != nil)
        queryParams[@"age_of_people"] = age_of_people;if(artists != nil)
        queryParams[@"artists"] = artists;if(collection_codes != nil)
        queryParams[@"collection_codes"] = collection_codes;if(collections_filter_type != nil)
        queryParams[@"collections_filter_type"] = collections_filter_type;if(compositions != nil)
        queryParams[@"compositions"] = compositions;if(date_from != nil)
        queryParams[@"date_from"] = date_from;if(date_to != nil)
        queryParams[@"date_to"] = date_to;if(editorial_segments != nil)
        queryParams[@"editorial_segments"] = editorial_segments;if(embed_content_only != nil)
        queryParams[@"embed_content_only"] = embed_content_only;if(entity_uris != nil)
        queryParams[@"entity_uris"] = entity_uris;if(ethnicity != nil)
        queryParams[@"ethnicity"] = ethnicity;if(event_ids != nil)
        queryParams[@"event_ids"] = event_ids;if(exclude_nudity != nil)
        queryParams[@"exclude_nudity"] = exclude_nudity;if(fields != nil)
        queryParams[@"fields"] = fields;if(file_types != nil)
        queryParams[@"file_types"] = file_types;if(graphical_styles != nil)
        queryParams[@"graphical_styles"] = graphical_styles;if(keyword_ids != nil)
        queryParams[@"keyword_ids"] = keyword_ids;if(number_of_people != nil)
        queryParams[@"number_of_people"] = number_of_people;if(orientations != nil)
        queryParams[@"orientations"] = orientations;if(page != nil)
        queryParams[@"page"] = page;if(page_size != nil)
        queryParams[@"page_size"] = page_size;if(phrase != nil)
        queryParams[@"phrase"] = phrase;if(product_types != nil)
        queryParams[@"product_types"] = product_types;if(sort_order != nil)
        queryParams[@"sort_order"] = sort_order;if(specific_locations != nil)
        queryParams[@"specific_locations"] = specific_locations;if(specific_people != nil)
        queryParams[@"specific_people"] = specific_people;
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    if(ApiKey != nil)
        headerParams[@"ApiKey"] = ApiKey;if(AcceptLanguage  != nil)
        headerParams[@"AcceptLanguage "] = AcceptLanguage ;if(Authorization != nil)
        headerParams[@"Authorization"] = Authorization;

    id bodyDictionary = nil;
    
    
    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    

    
    
    
    return [client dictionary:requestUrl 
                              method:@"GET" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);
                            
                            return;
                        }
                        
                        SWGEditorial_image_search_results *result = nil;
                        if (data) {
                            result = [[SWGEditorial_image_search_results    alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);
                        
                    }];
    

}

-(NSNumber*) Search_GetVideosByPhraseWithCompletionBlock:(NSString*) ApiKey        
            AcceptLanguage :(NSString*) AcceptLanguage         
            Authorization:(NSString*) Authorization        
            collection_codes:(NSArray*) collection_codes        
            collections_filter_type:(NSString*) collections_filter_type        
            exclude_nudity:(NSNumber*) exclude_nudity        
            fields:(NSArray*) fields        
            license_models:(NSArray*) license_models        
            page:(NSNumber*) page        
            page_size:(NSNumber*) page_size        
            phrase:(NSString*) phrase        
            product_types:(NSArray*) product_types        
        completionHandler: (void (^)(SWGVideo_search_results* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/search/videos", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(collection_codes != nil)
        queryParams[@"collection_codes"] = collection_codes;if(collections_filter_type != nil)
        queryParams[@"collections_filter_type"] = collections_filter_type;if(exclude_nudity != nil)
        queryParams[@"exclude_nudity"] = exclude_nudity;if(fields != nil)
        queryParams[@"fields"] = fields;if(license_models != nil)
        queryParams[@"license_models"] = license_models;if(page != nil)
        queryParams[@"page"] = page;if(page_size != nil)
        queryParams[@"page_size"] = page_size;if(phrase != nil)
        queryParams[@"phrase"] = phrase;if(product_types != nil)
        queryParams[@"product_types"] = product_types;
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    if(ApiKey != nil)
        headerParams[@"ApiKey"] = ApiKey;if(AcceptLanguage  != nil)
        headerParams[@"AcceptLanguage "] = AcceptLanguage ;if(Authorization != nil)
        headerParams[@"Authorization"] = Authorization;

    id bodyDictionary = nil;
    
    
    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    

    
    
    
    return [client dictionary:requestUrl 
                              method:@"GET" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);
                            
                            return;
                        }
                        
                        SWGVideo_search_results *result = nil;
                        if (data) {
                            result = [[SWGVideo_search_results    alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);
                        
                    }];
    

}

-(NSNumber*) Search_GetCreativeVideosByPhraseWithCompletionBlock:(NSString*) ApiKey        
            AcceptLanguage :(NSString*) AcceptLanguage         
            Authorization:(NSString*) Authorization        
            collection_codes:(NSArray*) collection_codes        
            collections_filter_type:(NSString*) collections_filter_type        
            exclude_nudity:(NSNumber*) exclude_nudity        
            fields:(NSArray*) fields        
            license_models:(NSArray*) license_models        
            page:(NSNumber*) page        
            page_size:(NSNumber*) page_size        
            phrase:(NSString*) phrase        
            product_types:(NSArray*) product_types        
        completionHandler: (void (^)(SWGCreative_video_search_results* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/search/videos/creative", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(collection_codes != nil)
        queryParams[@"collection_codes"] = collection_codes;if(collections_filter_type != nil)
        queryParams[@"collections_filter_type"] = collections_filter_type;if(exclude_nudity != nil)
        queryParams[@"exclude_nudity"] = exclude_nudity;if(fields != nil)
        queryParams[@"fields"] = fields;if(license_models != nil)
        queryParams[@"license_models"] = license_models;if(page != nil)
        queryParams[@"page"] = page;if(page_size != nil)
        queryParams[@"page_size"] = page_size;if(phrase != nil)
        queryParams[@"phrase"] = phrase;if(product_types != nil)
        queryParams[@"product_types"] = product_types;
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    if(ApiKey != nil)
        headerParams[@"ApiKey"] = ApiKey;if(AcceptLanguage  != nil)
        headerParams[@"AcceptLanguage "] = AcceptLanguage ;if(Authorization != nil)
        headerParams[@"Authorization"] = Authorization;

    id bodyDictionary = nil;
    
    
    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    

    
    
    
    return [client dictionary:requestUrl 
                              method:@"GET" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);
                            
                            return;
                        }
                        
                        SWGCreative_video_search_results *result = nil;
                        if (data) {
                            result = [[SWGCreative_video_search_results    alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);
                        
                    }];
    

}

-(NSNumber*) Search_GetEditorialVideosByPhraseWithCompletionBlock:(NSString*) ApiKey        
            AcceptLanguage :(NSString*) AcceptLanguage         
            Authorization:(NSString*) Authorization        
            collection_codes:(NSArray*) collection_codes        
            collections_filter_type:(NSString*) collections_filter_type        
            entity_uris:(NSArray*) entity_uris        
            exclude_nudity:(NSNumber*) exclude_nudity        
            fields:(NSArray*) fields        
            page:(NSNumber*) page        
            page_size:(NSNumber*) page_size        
            phrase:(NSString*) phrase        
            product_types:(NSArray*) product_types        
        completionHandler: (void (^)(SWGEditorial_video_search_results* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/search/videos/editorial", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(collection_codes != nil)
        queryParams[@"collection_codes"] = collection_codes;if(collections_filter_type != nil)
        queryParams[@"collections_filter_type"] = collections_filter_type;if(entity_uris != nil)
        queryParams[@"entity_uris"] = entity_uris;if(exclude_nudity != nil)
        queryParams[@"exclude_nudity"] = exclude_nudity;if(fields != nil)
        queryParams[@"fields"] = fields;if(page != nil)
        queryParams[@"page"] = page;if(page_size != nil)
        queryParams[@"page_size"] = page_size;if(phrase != nil)
        queryParams[@"phrase"] = phrase;if(product_types != nil)
        queryParams[@"product_types"] = product_types;
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    if(ApiKey != nil)
        headerParams[@"ApiKey"] = ApiKey;if(AcceptLanguage  != nil)
        headerParams[@"AcceptLanguage "] = AcceptLanguage ;if(Authorization != nil)
        headerParams[@"Authorization"] = Authorization;

    id bodyDictionary = nil;
    
    
    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    

    
    
    
    return [client dictionary:requestUrl 
                              method:@"GET" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);
                            
                            return;
                        }
                        
                        SWGEditorial_video_search_results *result = nil;
                        if (data) {
                            result = [[SWGEditorial_video_search_results    alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);
                        
                    }];
    

}



@end