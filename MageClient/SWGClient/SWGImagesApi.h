#import <Foundation/Foundation.h>
#import "SWGApiClient.h"
#import "SWGImages_detail.h"


@interface SWGImagesApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
-(SWGApiClient*) apiClient;

+(SWGImagesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 Get image metadata
 

 @param ApiKey ApiKey
 @param AcceptLanguage  AcceptLanguage  parameter optional. Used to restrict the set of natural languages that are preferred as a response to the request.
 @param Authorization Authorization token optional. Used for applying content access restrictions. Use one of the OAuth2 grants to auto-populate this value.
 @param ids Comma separated list of image ids.
 @param fields Comma separated list of fields. Allows restricting which fields are returned. If no fields are
                selected, the summary_set of fields are returned.
 
 */
-(NSNumber*) Images_GetWithCompletionBlock : (NSString*) ApiKey
            AcceptLanguage : (NSString*) AcceptLanguage 
            Authorization: (NSString*) Authorization
            ids: (NSString*) ids
            fields: (NSArray*) fields
    completionHandler: (void (^)(SWGImages_detail* output, NSError* error))completionBlock;

@end