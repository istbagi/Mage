#import <Foundation/Foundation.h>
#import "SWGApiClient.h"
#import "SWGProductsResult.h"


@interface SWGProductsApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
-(SWGApiClient*) apiClient;

+(SWGProductsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 <b>*** BETA ***</b> Get Products
 

 @param ApiKey ApiKey
 @param Authorization Authorization token required. Used for applying content access restrictions. Use one of the OAuth2 grants to auto-populate this value.
 @param AcceptLanguage  AcceptLanguage  parameter optional. Used to restrict the set of natural languages that are preferred as a response to the request.
 @param product_status Filter results based on the product status.  If not set, this filter defaults to Active.
 
 */
-(NSNumber*) Products_GetProductsWithCompletionBlock : (NSString*) ApiKey
            Authorization: (NSString*) Authorization
            AcceptLanguage : (NSString*) AcceptLanguage 
            product_status: (NSString*) product_status
    completionHandler: (void (^)(SWGProductsResult* output, NSError* error))completionBlock;

@end