#import "SWGDownloadsApi.h"
#import "SWGFile.h"
#import "SWGDate.h"
#import "SWGDownloads_response.h"



@implementation SWGDownloadsApi
static NSString * basePath = @"https://api.gettyimages.com/";

+(SWGDownloadsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static SWGDownloadsApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[SWGDownloadsApi alloc] init];
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


-(NSNumber*) Downloads_GetDownloadsWithCompletionBlock:(NSString*) ApiKey        
            Authorization:(NSString*) Authorization        
            date_from:(SWGDate*) date_from        
            date_to:(SWGDate*) date_to        
            page:(NSNumber*) page        
            page_size:(NSNumber*) page_size        
            product_type:(NSString*) product_type        
        completionHandler: (void (^)(SWGDownloads_response* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/downloads", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(date_from != nil)
        queryParams[@"date_from"] = date_from;if(date_to != nil)
        queryParams[@"date_to"] = date_to;if(page != nil)
        queryParams[@"page"] = page;if(page_size != nil)
        queryParams[@"page_size"] = page_size;if(product_type != nil)
        queryParams[@"product_type"] = product_type;
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    if(ApiKey != nil)
        headerParams[@"ApiKey"] = ApiKey;if(Authorization != nil)
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
                        
                        SWGDownloads_response *result = nil;
                        if (data) {
                            result = [[SWGDownloads_response    alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);
                        
                    }];
    

}

-(NSNumber*) Downloads_PostDownloadsWithCompletionBlock:(NSString*) ApiKey        
            Authorization:(NSString*) Authorization        
            _id:(NSString*) _id        
            auto_download:(NSNumber*) auto_download        
            file_type:(NSString*) file_type        
            height:(NSString*) height        
            product_id:(NSNumber*) product_id        
            product_type:(NSString*) product_type        
        completionHandler: (void (^)(NSString* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/downloads/images/{id}", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"id", @"}"]] withString: [SWGApiClient escape:_id]];
    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(auto_download != nil)
        queryParams[@"auto_download"] = auto_download;if(file_type != nil)
        queryParams[@"file_type"] = file_type;if(height != nil)
        queryParams[@"height"] = height;if(product_id != nil)
        queryParams[@"product_id"] = product_id;if(product_type != nil)
        queryParams[@"product_type"] = product_type;
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    if(ApiKey != nil)
        headerParams[@"ApiKey"] = ApiKey;if(Authorization != nil)
        headerParams[@"Authorization"] = Authorization;

    id bodyDictionary = nil;
    
    
    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    

    
    
    
    return [client stringWithCompletionBlock: requestUrl 
                                      method: @"POST" 
                                 queryParams: queryParams 
                                        body: bodyDictionary 
                                headerParams: headerParams
                          requestContentType: requestContentType
                         responseContentType: responseContentType
                             completionBlock: ^(NSString *data, NSError *error) {
                 if (error) {
                     completionBlock(nil, error);
                     return;
                 }
                NSString *result = data ? [[NSString  alloc]initWithString: data] : nil;
                completionBlock(result, nil);
             }];
    
    

}

-(NSNumber*) Downloads_PostVideoDownloadsWithCompletionBlock:(NSString*) ApiKey        
            Authorization:(NSString*) Authorization        
            _id:(NSString*) _id        
            auto_download:(NSNumber*) auto_download        
            size:(NSString*) size        
        completionHandler: (void (^)(NSString* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/downloads/videos/{id}", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"id", @"}"]] withString: [SWGApiClient escape:_id]];
    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(auto_download != nil)
        queryParams[@"auto_download"] = auto_download;if(size != nil)
        queryParams[@"size"] = size;
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    if(ApiKey != nil)
        headerParams[@"ApiKey"] = ApiKey;if(Authorization != nil)
        headerParams[@"Authorization"] = Authorization;

    id bodyDictionary = nil;
    
    
    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    

    
    
    
    return [client stringWithCompletionBlock: requestUrl 
                                      method: @"POST" 
                                 queryParams: queryParams 
                                        body: bodyDictionary 
                                headerParams: headerParams
                          requestContentType: requestContentType
                         responseContentType: responseContentType
                             completionBlock: ^(NSString *data, NSError *error) {
                 if (error) {
                     completionBlock(nil, error);
                     return;
                 }
                NSString *result = data ? [[NSString  alloc]initWithString: data] : nil;
                completionBlock(result, nil);
             }];
    
    

}

//-(NSNumber*) Downloads_PostDownloadsWithCompletionBlock:(NSString*) ApiKey        
//            Authorization:(NSString*) Authorization        
//            _id:(NSString*) _id        
//            auto_download:(NSNumber*) auto_download        
//            file_type:(NSString*) file_type        
//            height:(NSString*) height        
//            product_id:(NSNumber*) product_id        
//            product_type:(NSString*) product_type        
//        completionHandler: (void (^)(NSString* output, NSError* error))completionBlock
//         {
//
//    id m_body = nil;
//    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/downloads/{id}", basePath];
//
//    // remove format in URL if needed
//    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
//        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
//
//    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"id", @"}"]] withString: [SWGApiClient escape:_id]];
//    
//
//    NSString* requestContentType = @"application/json";
//    NSString* responseContentType = @"application/json";
//
//    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
//    if(auto_download != nil)
//        queryParams[@"auto_download"] = auto_download;if(file_type != nil)
//        queryParams[@"file_type"] = file_type;if(height != nil)
//        queryParams[@"height"] = height;if(product_id != nil)
//        queryParams[@"product_id"] = product_id;if(product_type != nil)
//        queryParams[@"product_type"] = product_type;
//    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
//    if(ApiKey != nil)
//        headerParams[@"ApiKey"] = ApiKey;if(Authorization != nil)
//        headerParams[@"Authorization"] = Authorization;
//
//    id bodyDictionary = nil;
//    
//    
//    
//
//    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];
//
//    
//
//    
//    
//    
//    return [client stringWithCompletionBlock: requestUrl 
//                                      method: @"POST" 
//                                 queryParams: queryParams 
//                                        body: bodyDictionary 
//                                headerParams: headerParams
//                          requestContentType: requestContentType
//                         responseContentType: responseContentType
//                             completionBlock: ^(NSString *data, NSError *error) {
//                 if (error) {
//                     completionBlock(nil, error);
//                     return;
//                 }
//                NSString *result = data ? [[NSString  alloc]initWithString: data] : nil;
//                completionBlock(result, nil);
//             }];
//    
//    
//
//}



@end