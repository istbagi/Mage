#import "SWGImagesApi.h"
#import "SWGFile.h"
#import "SWGImages_detail.h"



@implementation SWGImagesApi
static NSString * basePath = @"https://api.gettyimages.com/";

+(SWGImagesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static SWGImagesApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[SWGImagesApi alloc] init];
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


-(NSNumber*) Images_GetWithCompletionBlock:(NSString*) ApiKey        
            AcceptLanguage :(NSString*) AcceptLanguage         
            Authorization:(NSString*) Authorization        
            ids:(NSString*) ids        
            fields:(NSArray*) fields        
        completionHandler: (void (^)(SWGImages_detail* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/images/{ids}", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"ids", @"}"]] withString: [SWGApiClient escape:ids]];
    

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
                        
                        SWGImages_detail *result = nil;
                        if (data) {
                            result = [[SWGImages_detail    alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);
                        
                    }];
    

}



@end