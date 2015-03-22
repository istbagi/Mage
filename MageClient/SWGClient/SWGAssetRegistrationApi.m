#import "SWGAssetRegistrationApi.h"
#import "SWGFile.h"
#import "SWGRegisterAssetsRequest.h"



@implementation SWGAssetRegistrationApi
static NSString * basePath = @"https://api.gettyimages.com/";

+(SWGAssetRegistrationApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static SWGAssetRegistrationApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[SWGAssetRegistrationApi alloc] init];
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


-(NSNumber*) AssetRegistration_RegisterWithCompletionBlock:(NSString*) Authorization        
            ApiKey:(NSString*) ApiKey        
            AcceptLanguage :(NSString*) AcceptLanguage         
            request:(SWGRegisterAssetsRequest*) request        
        completionHandler: (void (^)(NSString* output, NSError* error))completionBlock
         {

    id m_body = request;
    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/asset-registrations", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    if(Authorization != nil)
        headerParams[@"Authorization"] = Authorization;if(ApiKey != nil)
        headerParams[@"ApiKey"] = ApiKey;if(AcceptLanguage  != nil)
        headerParams[@"AcceptLanguage "] = AcceptLanguage ;

    id bodyDictionary = nil;
    
    if(m_body != nil && [m_body isKindOfClass:[NSArray class]]){
        NSMutableArray * objs = [[NSMutableArray alloc] init];
        for (id dict in (NSArray*)m_body) {
            if([dict respondsToSelector:@selector(asDictionary)]) {
                [objs addObject:[(SWGObject*)dict asDictionary]];
            }
            else{
                [objs addObject:dict];
            }
        }
        bodyDictionary = objs;
    }
    else if([m_body respondsToSelector:@selector(asDictionary)]) {
        bodyDictionary = [(SWGObject*)m_body asDictionary];
    }
    else if([m_body isKindOfClass:[NSString class]]) {
        // convert it to a dictionary
        NSError * error;
        NSString * str = (NSString*)m_body;
        NSDictionary *JSON =
            [NSJSONSerialization JSONObjectWithData:[str dataUsingEncoding:NSUTF8StringEncoding]
                                            options:NSJSONReadingMutableContainers
                                              error:&error];
        bodyDictionary = JSON;
    }
    else if([m_body isKindOfClass: [SWGFile class]]) {
        requestContentType = @"form-data";
        bodyDictionary = m_body;
    }
    else{
        NSLog(@"don't know what to do with %@", m_body);
    }

    
    
    

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



@end