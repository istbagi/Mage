#import <Foundation/Foundation.h>
#import "SWGApiClient.h"
#import "SWGDate.h"
#import "SWGPreviousPurchases.h"


@interface SWGPurchasesApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
-(SWGApiClient*) apiClient;

+(SWGPurchasesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 Get Previous Purchases
 

 @param ApiKey ApiKey
 @param Authorization Authorization token required. Used for applying content access restrictions. Use one of the OAuth2 grants to auto-populate this value.
 @param date_from If specified, retrieves previous purchases on or after this date. Dates should be submitted in ISO 8601 format (i.e., YYYY-MM-DD).
 @param date_to If specified, retrieves previous purchases on or before this date. Dates should be submitted in ISO 8601 format (i.e., YYYY-MM-DD).
 @param page Current page number for results. The default is 1.
 @param page_size Page size for results The default is 75.
 
 */
-(NSNumber*) Purchases_GetPreviousPurchasesWithCompletionBlock : (NSString*) ApiKey
            Authorization: (NSString*) Authorization
            date_from: (SWGDate*) date_from
            date_to: (SWGDate*) date_to
            page: (NSNumber*) page
            page_size: (NSNumber*) page_size
    completionHandler: (void (^)(SWGPreviousPurchases* output, NSError* error))completionBlock;

@end