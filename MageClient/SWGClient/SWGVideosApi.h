#import <Foundation/Foundation.h>
#import "SWGApiClient.h"
#import "SWGVideos_detail.h"
#import "SWGVideo_detail.h"


@interface SWGVideosApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
-(SWGApiClient*) apiClient;

+(SWGVideosApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 <b>*** BETA ***</b> Get metadata for multiple videos
 

 @param ApiKey ApiKey
 @param AcceptLanguage  AcceptLanguage  parameter optional. Used to restrict the set of natural languages that are preferred as a response to the request.
 @param Authorization Authorization token optional. Used for applying content access restrictions. Use one of the OAuth2 grants to auto-populate this value.
 @param ids Comma separated list of video ids.
 @param fields Comma separated list of fields. Allows restricting which fields are returned. If no fields are
                selected, the summary_set of fields are returned.
 
 */
-(NSNumber*) Videos_GetBatchWithCompletionBlock : (NSString*) ApiKey
            AcceptLanguage : (NSString*) AcceptLanguage 
            Authorization: (NSString*) Authorization
            ids: (NSArray*) ids
            fields: (NSArray*) fields
    completionHandler: (void (^)(SWGVideos_detail* output, NSError* error))completionBlock;

/**

 <b>*** BETA ***</b> Get metadata for a single video
 

 @param ApiKey ApiKey
 @param AcceptLanguage  AcceptLanguage  parameter optional. Used to restrict the set of natural languages that are preferred as a response to the request.
 @param Authorization Authorization token optional. Used for applying content access restrictions. Use one of the OAuth2 grants to auto-populate this value.
 @param _id A video id
 @param fields comma delimited list of fields to retrive for the video
 
 */
-(NSNumber*) Videos_GetWithCompletionBlock : (NSString*) ApiKey
            AcceptLanguage : (NSString*) AcceptLanguage 
            Authorization: (NSString*) Authorization
            _id: (NSString*) _id
            fields: (NSArray*) fields
    completionHandler: (void (^)(SWGVideo_detail* output, NSError* error))completionBlock;

@end