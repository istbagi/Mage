#import "SWGVideosApi.h"
#import "SWGFile.h"
#import "SWGVideos_detail.h"
#import "SWGVideo_detail.h"



@implementation SWGVideosApi
static NSString * basePath = @"https://api.gettyimages.com/";

+(SWGVideosApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static SWGVideosApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[SWGVideosApi alloc] init];
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


-(NSNumber*) Videos_GetBatchWithCompletionBlock:(NSString*) ApiKey        
            AcceptLanguage :(NSString*) AcceptLanguage         
            Authorization:(NSString*) Authorization        
            ids:(NSArray*) ids        
            fields:(NSArray*) fields        
        completionHandler: (void (^)(SWGVideos_detail* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/videos", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(ids != nil)
        queryParams[@"ids"] = ids;if(fields != nil)
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
                        
                        SWGVideos_detail *result = nil;
                        if (data) {
                            result = [[SWGVideos_detail    alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);
                        
                    }];
    

}

-(NSNumber*) Videos_GetWithCompletionBlock:(NSString*) ApiKey        
            AcceptLanguage :(NSString*) AcceptLanguage         
            Authorization:(NSString*) Authorization        
            _id:(NSString*) _id        
            fields:(NSArray*) fields        
        completionHandler: (void (^)(SWGVideo_detail* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/videos/{id}", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"id", @"}"]] withString: [SWGApiClient escape:_id]];
    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(fields != nil)
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
                        
                        SWGVideo_detail *result = nil;
                        if (data) {
                            result = [[SWGVideo_detail    alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);
                        
                    }];
    

}



@end