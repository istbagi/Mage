#import <Foundation/Foundation.h>
#import "SWGApiClient.h"
#import "SWGReport_usage_batch_request.h"


@interface SWGUsageApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
-(SWGApiClient*) apiClient;

+(SWGUsageApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 Provides the api for reporting usage of assets in a batch format.
 

 @param ApiKey ApiKey
 @param AcceptLanguage  AcceptLanguage  parameter optional. Used to restrict the set of natural languages that are preferred as a response to the request.
 @param request Json model with asset usages to report. Supports up to 1000 usages per batch. Given the atomic nature of the operation,
             all Image Ids included in a request must be valid for the batch to be recorded. Batches containing an invalid Image Id will cause the operation
             to fail and return an error response. In this case, none of the reported usages will be recorded.
 @param _id Batch Id to record with the report. Must be unique.
 @param Authorization Authorization token required. Used for applying content access restrictions. Use one of the OAuth2 grants to auto-populate this value.
 
 */
-(NSNumber*) Usage_PutWithCompletionBlock : (NSString*) ApiKey
            AcceptLanguage : (NSString*) AcceptLanguage 
            request: (SWGReport_usage_batch_request*) request
            _id: (NSString*) _id
            Authorization: (NSString*) Authorization
    completionHandler: (void (^)(NSString* output, NSError* error))completionBlock;

@end