#import <Foundation/Foundation.h>
#import "SWGApiClient.h"
#import "SWGCountries.h"


@interface SWGCountriesApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
-(SWGApiClient*) apiClient;

+(SWGCountriesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 Gets countries codes and names.
 

 @param ApiKey ApiKey
 @param AcceptLanguage  AcceptLanguage  parameter optional. Used to restrict the set of natural languages that are preferred as a response to the request.
 @param Authorization Authorization token optional. Used for applying content access restrictions. Use one of the OAuth2 grants to auto-populate this value.
 
 */
-(NSNumber*) Countries_GetCountriesWithCompletionBlock : (NSString*) ApiKey
            AcceptLanguage : (NSString*) AcceptLanguage 
            Authorization: (NSString*) Authorization
    completionHandler: (void (^)(SWGCountries* output, NSError* error))completionBlock;

@end