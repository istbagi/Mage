#import "SWGCollectionsApi.h"
#import "SWGFile.h"
#import "SWGCollections.h"



@implementation SWGCollectionsApi
static NSString * basePath = @"https://api.gettyimages.com/";

+(SWGCollectionsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static SWGCollectionsApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[SWGCollectionsApi alloc] init];
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


-(NSNumber*) Collections_GetCollectionsWithCompletionBlock:(NSString*) ApiKey
            Authorization:(NSString*) Authorization        
            AcceptLanguage:(NSString*) AcceptLanguage        
        completionHandler: (void (^)(SWGCollections* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/collections", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    if(ApiKey != nil)
        headerParams[@"ApiKey"] = ApiKey;if(Authorization != nil)
        headerParams[@"Authorization"] = Authorization;if(AcceptLanguage != nil)
        headerParams[@"AcceptLanguage "] = AcceptLanguage;

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
                        
                        SWGCollections *result = nil;
                        if (data) {
                            result = [[SWGCollections    alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);
                        
                    }];
    

}



@end