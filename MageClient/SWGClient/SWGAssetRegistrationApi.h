#import <Foundation/Foundation.h>
#import "SWGApiClient.h"
#import "SWGRegisterAssetsRequest.h"


@interface SWGAssetRegistrationApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
-(SWGApiClient*) apiClient;

+(SWGAssetRegistrationApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 Registers a list of assets that a customer has stored in their system.
 

 @param Authorization Authorization token required. Used for applying content access restrictions. Use one of the OAuth2 grants to auto-populate this value.
 @param ApiKey ApiKey
 @param AcceptLanguage  AcceptLanguage  parameter optional. Used to restrict the set of natural languages that are preferred as a response to the request.
 @param request JSON model containing comma-separated list of asset ids to register with Getty.  Limited to 500 asset ids per call.
 
 */
-(NSNumber*) AssetRegistration_RegisterWithCompletionBlock : (NSString*) Authorization
            ApiKey: (NSString*) ApiKey
            AcceptLanguage : (NSString*) AcceptLanguage 
            request: (SWGRegisterAssetsRequest*) request
    completionHandler: (void (^)(NSString* output, NSError* error))completionBlock;

@end