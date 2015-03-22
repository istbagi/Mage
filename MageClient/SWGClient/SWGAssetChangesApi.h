#import <Foundation/Foundation.h>
#import "SWGApiClient.h"


@interface SWGAssetChangesApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
-(SWGApiClient*) apiClient;

+(SWGAssetChangesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 Generates asset changes.
 

 @param ApiKey ApiKey
 @param AcceptLanguage  AcceptLanguage  parameter optional. Used to restrict the set of natural languages that are preferred as a response to the request.
 @param channel_id Specify the channel of content for the GetAssetChanges request. 
             Each channel contains changed assets based on criteria such as asset family,
             changed asset metadata, or the type of change to the asset (i.e. new, deleted, updated)
 @param batch_size Number of assets to return in the response. Default is 10; maximum is 500.
 @param Authorization Authorization token required. Used for applying content access restrictions. Use one of the OAuth2 grants to auto-populate this value.
 
 */
-(NSNumber*) AssetChanges_PutAssetChangesWithCompletionBlock : (NSString*) ApiKey
            AcceptLanguage : (NSString*) AcceptLanguage 
            channel_id: (NSNumber*) channel_id
            batch_size: (NSNumber*) batch_size
            Authorization: (NSString*) Authorization
    completionHandler: (void (^)(NSString* output, NSError* error))completionBlock;

/**

 Confirm asset changes acknowledges receipt of asset changes.
 

 @param ApiKey ApiKey
 @param AcceptLanguage  AcceptLanguage  parameter optional. Used to restrict the set of natural languages that are preferred as a response to the request.
 @param change_set_id  Specify the TransactionId associated with a transaction resource whose receipt you want to confirm.
 @param Authorization Authorization token required. Used for applying content access restrictions. Use one of the OAuth2 grants to auto-populate this value.
 
 */
-(NSNumber*) AssetChanges_DeleteAssetChangesWithCompletionBlock : (NSString*) ApiKey
            AcceptLanguage : (NSString*) AcceptLanguage 
            change_set_id : (NSNumber*) change_set_id 
            Authorization: (NSString*) Authorization
    completionHandler: (void (^)(NSString* output, NSError* error))completionBlock;

/**

 Gets the partners channel data
 

 @param ApiKey ApiKey
 @param AcceptLanguage  AcceptLanguage  parameter optional. Used to restrict the set of natural languages that are preferred as a response to the request.
 @param Authorization Authorization token required. Used for applying content access restrictions. Use one of the OAuth2 grants to auto-populate this value.
 
 */
-(NSNumber*) AssetChanges_GetPartnerChannelWithCompletionBlock : (NSString*) ApiKey
            AcceptLanguage : (NSString*) AcceptLanguage 
            Authorization: (NSString*) Authorization
    completionHandler: (void (^)(NSString* output, NSError* error))completionBlock;

@end