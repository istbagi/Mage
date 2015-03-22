#import <Foundation/Foundation.h>
#import "SWGApiClient.h"
#import "SWGDate.h"
#import "SWGDownloads_response.h"


@interface SWGDownloadsApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
-(SWGApiClient*) apiClient;

+(SWGDownloadsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 <b>*** BETA ***</b> Returns information about a customer's downloaded assets.
 

 @param ApiKey ApiKey
 @param Authorization Authorization token required. Used for applying content access restrictions. Use one of the OAuth2 grants to auto-populate this value.
 @param date_from If specified, select assets downloaded on or after this date. Dates should be submitted in ISO 8601 format (i.e., YYYY-MM-DD).
 @param date_to If specified, select assets downloaded on or before this date. Dates should be submitted in ISO 8601 format (i.e., YYYY-MM-DD).
 @param page Page number
 @param page_size Size of page
 @param product_type Specifies product type to be included in the previous download results.
 
 */
-(NSNumber*) Downloads_GetDownloadsWithCompletionBlock : (NSString*) ApiKey
            Authorization: (NSString*) Authorization
            date_from: (SWGDate*) date_from
            date_to: (SWGDate*) date_to
            page: (NSNumber*) page
            page_size: (NSNumber*) page_size
            product_type: (NSString*) product_type
    completionHandler: (void (^)(SWGDownloads_response* output, NSError* error))completionBlock;

/**

 Download an image
 The single step download call returns either a redirect or a response message with the URI to download the largest image available.
                 Returns HTTP status code 303 Redirect to download URI or HTTP status code 200.

 @param ApiKey ApiKey
 @param Authorization Authorization token required. Used for applying content access restrictions. Use one of the OAuth2 grants to auto-populate this value.
 @param _id Id of image to download.
 @param auto_download Specifies whether to auto-download the image. If true is specified, a 303 SeeOther status is returned with a
                    Location header set to the location of the image.
                    If false is specified, the download URI will be returned in the response message.
 @param file_type File Type expressed with three character file extension.
 @param height Specifies the pixel height of the particular image to download.
                    Available heights can be found in the images/{ids} response for the specific image.
                    If left blank, it will return the largest available size.
 @param product_id Identifier of the instance for the selected product offering type.
 @param product_type Product type.
 
 */
//-(NSNumber*) Downloads_PostDownloadsWithCompletionBlock : (NSString*) ApiKey
//            Authorization: (NSString*) Authorization
//            _id: (NSString*) _id
//            auto_download: (NSNumber*) auto_download
//            file_type: (NSString*) file_type
//            height: (NSString*) height
//            product_id: (NSNumber*) product_id
//            product_type: (NSString*) product_type
//    completionHandler: (void (^)(NSString* output, NSError* error))completionBlock;

/**

 Download a video
 The single step download call returns either a redirect or a response message with the URI to download the largest video available.
                 Returns HTTP status code 303 Redirect to download URI or HTTP status code 200.

 @param ApiKey ApiKey
 @param Authorization Authorization token required. Used for applying content access restrictions. Use one of the OAuth2 grants to auto-populate this value.
 @param _id Id of video to download.
 @param auto_download Specifies whether to auto-download the video. If true is specified, a 303 SeeOther status is returned with a
                    Location header set to the location of the video.
                    If false is specified, the download URI will be returned in the response message.
 @param size Specifies the size to be downloaded.
 
 */
-(NSNumber*) Downloads_PostVideoDownloadsWithCompletionBlock : (NSString*) ApiKey
            Authorization: (NSString*) Authorization
            _id: (NSString*) _id
            auto_download: (NSNumber*) auto_download
            size: (NSString*) size
    completionHandler: (void (^)(NSString* output, NSError* error))completionBlock;

/**

 Download an image
 The single step download call returns either a redirect or a response message with the URI to download the largest image available.
                 Returns HTTP status code 303 Redirect to download URI or HTTP status code 200.

 @param ApiKey ApiKey
 @param Authorization Authorization token required. Used for applying content access restrictions. Use one of the OAuth2 grants to auto-populate this value.
 @param _id Id of image to download.
 @param auto_download Specifies whether to auto-download the image. If true is specified, a 303 SeeOther status is returned with a
                    Location header set to the location of the image.
                    If false is specified, the download URI will be returned in the response message.
 @param file_type File Type expressed with three character file extension.
 @param height Specifies the pixel height of the particular image to download.
                    Available heights can be found in the images/{ids} response for the specific image.
                    If left blank, it will return the largest available size.
 @param product_id Identifier of the instance for the selected product offering type.
 @param product_type Product type.
 
 */
-(NSNumber*) Downloads_PostDownloadsWithCompletionBlock : (NSString*) ApiKey
            Authorization: (NSString*) Authorization
            _id: (NSString*) _id
            auto_download: (NSNumber*) auto_download
            file_type: (NSString*) file_type
            height: (NSString*) height
            product_id: (NSNumber*) product_id
            product_type: (NSString*) product_type
    completionHandler: (void (^)(NSString* output, NSError* error))completionBlock;

@end