#import "SWGUsageApi.h"
#import "SWGFile.h"
#import "SWGReport_usage_batch_request.h"



@implementation SWGUsageApi
static NSString * basePath = @"https://api.gettyimages.com/";

+(SWGUsageApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static SWGUsageApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[SWGUsageApi alloc] init];
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


-(NSNumber*) Usage_PutWithCompletionBlock:(NSString*) ApiKey        
            AcceptLanguage :(NSString*) AcceptLanguage         
            request:(SWGReport_usage_batch_request*) request        
            _id:(NSString*) _id        
            Authorization:(NSString*) Authorization        
        completionHandler: (void (^)(NSString* output, NSError* error))completionBlock
         {

    id m_body = request;
    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/usage-batches/{id}", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"id", @"}"]] withString: [SWGApiClient escape:_id]];
    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    if(ApiKey != nil)
        headerParams[@"ApiKey"] = ApiKey;if(AcceptLanguage  != nil)
        headerParams[@"AcceptLanguage "] = AcceptLanguage ;if(Authorization != nil)
        headerParams[@"Authorization"] = Authorization;

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



@end