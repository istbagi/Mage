#import "SWGAssetChangesApi.h"
#import "SWGFile.h"



@implementation SWGAssetChangesApi
static NSString * basePath = @"https://api.gettyimages.com/";

+(SWGAssetChangesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static SWGAssetChangesApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[SWGAssetChangesApi alloc] init];
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


-(NSNumber*) AssetChanges_PutAssetChangesWithCompletionBlock:(NSString*) ApiKey        
            AcceptLanguage :(NSString*) AcceptLanguage         
            channel_id:(NSNumber*) channel_id        
            batch_size:(NSNumber*) batch_size        
            Authorization:(NSString*) Authorization        
        completionHandler: (void (^)(NSString* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/asset-changes/change-sets", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(channel_id != nil)
        queryParams[@"channel_id"] = channel_id;if(batch_size != nil)
        queryParams[@"batch_size"] = batch_size;
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    if(ApiKey != nil)
        headerParams[@"ApiKey"] = ApiKey;if(AcceptLanguage  != nil)
        headerParams[@"AcceptLanguage "] = AcceptLanguage ;if(Authorization != nil)
        headerParams[@"Authorization"] = Authorization;

    id bodyDictionary = nil;
    
    
    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    

    
    
    
    return [client stringWithCompletionBlock: requestUrl 
                                      method: @"PUT" 
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

-(NSNumber*) AssetChanges_DeleteAssetChangesWithCompletionBlock:(NSString*) ApiKey        
            AcceptLanguage :(NSString*) AcceptLanguage         
            change_set_id :(NSNumber*) change_set_id         
            Authorization:(NSString*) Authorization        
        completionHandler: (void (^)(NSString* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/asset-changes/change-sets/{change_set_id }", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"change_set_id ", @"}"]] withString: [SWGApiClient escape:change_set_id ]];
    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    if(ApiKey != nil)
        headerParams[@"ApiKey"] = ApiKey;if(AcceptLanguage  != nil)
        headerParams[@"AcceptLanguage "] = AcceptLanguage ;if(Authorization != nil)
        headerParams[@"Authorization"] = Authorization;

    id bodyDictionary = nil;
    
    
    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    

    
    
    
    return [client stringWithCompletionBlock: requestUrl 
                                      method: @"DELETE" 
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

-(NSNumber*) AssetChanges_GetPartnerChannelWithCompletionBlock:(NSString*) ApiKey        
            AcceptLanguage :(NSString*) AcceptLanguage         
            Authorization:(NSString*) Authorization        
        completionHandler: (void (^)(NSString* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/asset-changes/channels", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    if(ApiKey != nil)
        headerParams[@"ApiKey"] = ApiKey;if(AcceptLanguage  != nil)
        headerParams[@"AcceptLanguage "] = AcceptLanguage ;if(Authorization != nil)
        headerParams[@"Authorization"] = Authorization;

    id bodyDictionary = nil;
    
    
    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    

    
    
    
    return [client stringWithCompletionBlock: requestUrl 
                                      method: @"GET" 
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



@end
