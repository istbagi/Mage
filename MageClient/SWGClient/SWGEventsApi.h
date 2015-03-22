#import <Foundation/Foundation.h>
#import "SWGApiClient.h"
#import "SWGEvents_result.h"
#import "SWGEvent.h"


@interface SWGEventsApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
-(SWGApiClient*) apiClient;

+(SWGEventsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 <b>*** BETA ***</b> Get metadata for multiple events
 Returns an array of event metadata

 @param ApiKey ApiKey
 @param AcceptLanguage  AcceptLanguage  parameter optional. Used to restrict the set of natural languages that are preferred as a response to the request.
 @param Authorization Authorization token optional. Used for applying content access restrictions. Use one of the OAuth2 grants to auto-populate this value.
 @param fields A comma separated list of fields to return in the response.
 @param ids A comma separated list of event ids.
 
 */
-(NSNumber*) Events_GetBatchWithCompletionBlock : (NSString*) ApiKey
            AcceptLanguage : (NSString*) AcceptLanguage 
            Authorization: (NSString*) Authorization
            fields: (NSArray*) fields
            ids: (NSArray*) ids
    completionHandler: (void (^)(SWGEvents_result* output, NSError* error))completionBlock;

/**

 <b>*** BETA ***</b> Get metadata for a single event
 Returns an array of event metadata

 @param ApiKey ApiKey
 @param AcceptLanguage  AcceptLanguage  parameter optional. Used to restrict the set of natural languages that are preferred as a response to the request.
 @param Authorization Authorization token optional. Used for applying content access restrictions. Use one of the OAuth2 grants to auto-populate this value.
 @param _id An event id.
 @param fields A comma separated list of fields to return in the response.
 
 */
-(NSNumber*) Events_GetWithCompletionBlock : (NSString*) ApiKey
            AcceptLanguage : (NSString*) AcceptLanguage 
            Authorization: (NSString*) Authorization
            _id: (NSNumber*) _id
            fields: (NSArray*) fields
    completionHandler: (void (^)(SWGEvent* output, NSError* error))completionBlock;

@end