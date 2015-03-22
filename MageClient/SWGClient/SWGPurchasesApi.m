#import "SWGPurchasesApi.h"
#import "SWGFile.h"
#import "SWGDate.h"
#import "SWGPreviousPurchases.h"



@implementation SWGPurchasesApi
static NSString * basePath = @"https://api.gettyimages.com/";

+(SWGPurchasesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static SWGPurchasesApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[SWGPurchasesApi alloc] init];
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


-(NSNumber*) Purchases_GetPreviousPurchasesWithCompletionBlock:(NSString*) ApiKey        
            Authorization:(NSString*) Authorization        
            date_from:(SWGDate*) date_from        
            date_to:(SWGDate*) date_to        
            page:(NSNumber*) page        
            page_size:(NSNumber*) page_size        
        completionHandler: (void (^)(SWGPreviousPurchases* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/purchased-images", basePath];

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
        queryParams[@"page_size"] = page_size;
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
                        
                        SWGPreviousPurchases *result = nil;
                        if (data) {
                            result = [[SWGPreviousPurchases    alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);
                        
                    }];
    

}



@end