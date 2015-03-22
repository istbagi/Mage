#import <Foundation/Foundation.h>
#import "SWGApiClient.h"
#import "SWGCollections.h"


@interface SWGCollectionsApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
-(SWGApiClient*) apiClient;

+(SWGCollectionsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 <b>*** BETA ***</b> Gets collections applicable for the customer.
 

 @param ApiKey ApiKey
 @param Authorization Authorization token required. Used for applying content access restrictions. Use one of the OAuth2 grants to auto-populate this value.
 @param AcceptLanguage  AcceptLanguage  parameter optional. Used to restrict the set of natural languages that are preferred as a response to the request.
 
 */
-(NSNumber*) Collections_GetCollectionsWithCompletionBlock : (NSString*) ApiKey
            Authorization: (NSString*) Authorization
            AcceptLanguage: (NSString*) AcceptLanguage
    completionHandler: (void (^)(SWGCollections* output, NSError* error))completionBlock;

@end