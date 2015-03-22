#import <Foundation/Foundation.h>
#import "SWGApiClient.h"
#import "SWGImage_search_results.h"
#import "SWGEvents_result.h"
#import "SWGDate.h"
#import "SWGEditorial_video_search_results.h"
#import "SWGEditorial_image_search_results.h"
#import "SWGCreative_image_search_results.h"
#import "SWGVideo_search_results.h"
#import "SWGCreative_video_search_results.h"


@interface SWGSearchApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
-(SWGApiClient*) apiClient;

+(SWGSearchApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 <b>*** BETA ***</b> Search for images similar to an image
 

 @param ApiKey ApiKey
 @param AcceptLanguage  AcceptLanguage  parameter optional. Used to restrict the set of natural languages that are preferred as a response to the request.
 @param Authorization Authorization token optional. Used for applying content access restrictions. Use one of the OAuth2 grants to auto-populate this value.
 @param _id Identifies an existing image
 @param fields Comma separated list of fields. Allows restricting which fields are returned. If no fields are selected, the summary_set of fields are returned.
 @param page Page number.
 @param page_size Size of page.
 
 */
-(NSNumber*) Search_GetSimilarImagesWithCompletionBlock : (NSString*) ApiKey
            AcceptLanguage : (NSString*) AcceptLanguage 
            Authorization: (NSString*) Authorization
            _id: (NSString*) _id
            fields: (NSArray*) fields
            page: (NSNumber*) page
            page_size: (NSNumber*) page_size
    completionHandler: (void (^)(SWGImage_search_results* output, NSError* error))completionBlock;

/**

 <b>*** BETA ***</b> Search for events
 

 @param ApiKey ApiKey
 @param AcceptLanguage  AcceptLanguage  parameter optional. Used to restrict the set of natural languages that are preferred as a response to the request.
 @param Authorization Authorization token optional. Used for applying content access restrictions. Use one of the OAuth2 grants to auto-populate this value.
 @param editorial_segment Identifies an editorial segment for the event.
 @param date_from If specified, include only events that start on or after this date. Dates should be submitted in ISO 8601 format (i.e., YYYY-MM-DD).
 @param date_to If specified, include only events that start on or before this date. Dates should be submitted in ISO 8601 format (i.e., YYYY-MM-DD).
 @param fields Comma separated list of fields. Allows restricting which fields are returned. If no fields are selected, the summary_set of fields are returned.
 
 */
-(NSNumber*) Search_GetEventsWithCompletionBlock : (NSString*) ApiKey
            AcceptLanguage : (NSString*) AcceptLanguage 
            Authorization: (NSString*) Authorization
            editorial_segment: (NSString*) editorial_segment
            date_from: (SWGDate*) date_from
            date_to: (SWGDate*) date_to
            fields: (NSArray*) fields
    completionHandler: (void (^)(SWGEvents_result* output, NSError* error))completionBlock;

/**

 Search for both creative and editorial images
 

 @param ApiKey ApiKey
 @param AcceptLanguage  AcceptLanguage  parameter optional. Used to restrict the set of natural languages that are preferred as a response to the request.
 @param Authorization Authorization token optional. Used for applying content access restrictions. Use one of the OAuth2 grants to auto-populate this value.
 @param age_of_people Allows for filtering based on age of individuals in an image.
 @param artists Free-text search, comma-separated artist search query.
 @param collection_codes Allows filtering by collection code.
 @param collections_filter_type Allows searching based on included or excluded collections.
 @param compositions Allows for filtering based on image composition.
 @param date_from If specified, include only images created on or after this date. Dates should be submitted in ISO 8601 format (i.e., YYYY-MM-DD).
 @param date_to If specified, include only images created on or before this date. Dates should be submitted in ISO 8601 format (i.e., YYYY-MM-DD).
 @param embed_content_only Restrict search results to embeddable images. The default is false.
 @param ethnicity Filters search results based on the ethnicity of individuals in an image.
 @param event_ids Allows for searching based on specific events
 @param exclude_nudity Exclude images tagged as containing nudity. The default is false.
 @param fields Comma separated list of fields. Allows restricting which fields are returned. If no fields are selected, the summary_set of fields are returned.
 @param file_types Identifies a file type for the image.
 @param graphical_styles Identifies a graphical style for the image.
 @param keyword_ids Comma separated-list of keyword IDs.  If specified, returns images containing the requested keyword(s).  If keyword IDs and phrase are both specified, returns only those images matching the query phrase which also contain the requested keyword(s).
 @param license_models Identifies a licensing model for the image.
 @param number_of_people Allows for filtering based on the number of people in the image
 @param orientations Choose images based on their aspect ratios.
 @param page Page number.
 @param page_size Size of page.
 @param phrase Free-text search query.
 @param prestige_content_only Restrict search results to prestige images.  The default is false.
 @param product_types Allows filtering by a list of product types.
 @param sort_order Allows sorting of results.
 @param specific_locations Allows for filtering by specific location keywords.
 @param specific_people Allows for filtering based on specific people keywords.
 
 */
-(NSNumber*) Search_GetImagesByPhraseWithCompletionBlock : (NSString*) ApiKey
            AcceptLanguage : (NSString*) AcceptLanguage 
            Authorization: (NSString*) Authorization
            age_of_people: (NSArray*) age_of_people
            artists: (NSString*) artists
            collection_codes: (NSArray*) collection_codes
            collections_filter_type: (NSString*) collections_filter_type
            compositions: (NSArray*) compositions
            date_from: (SWGDate*) date_from
            date_to: (SWGDate*) date_to
            embed_content_only: (NSNumber*) embed_content_only
            ethnicity: (NSArray*) ethnicity
            event_ids: (NSArray*) event_ids
            exclude_nudity: (NSNumber*) exclude_nudity
            fields: (NSArray*) fields
            file_types: (NSArray*) file_types
            graphical_styles: (NSArray*) graphical_styles
            keyword_ids: (NSArray*) keyword_ids
            license_models: (NSArray*) license_models
            number_of_people: (NSArray*) number_of_people
            orientations: (NSArray*) orientations
            page: (NSNumber*) page
            page_size: (NSNumber*) page_size
            phrase: (NSString*) phrase
            prestige_content_only: (NSNumber*) prestige_content_only
            product_types: (NSArray*) product_types
            sort_order: (NSString*) sort_order
            specific_locations: (NSArray*) specific_locations
            specific_people: (NSArray*) specific_people
    completionHandler: (void (^)(SWGImage_search_results* output, NSError* error))completionBlock;

/**

 Search for creative images only
 

 @param ApiKey ApiKey
 @param AcceptLanguage  AcceptLanguage  parameter optional. Used to restrict the set of natural languages that are preferred as a response to the request.
 @param Authorization Authorization token optional. Used for applying content access restrictions. Use one of the OAuth2 grants to auto-populate this value.
 @param age_of_people Allows for filtering based on age of individuals in an image
 @param artists Free-text search, comma-separated artist search query.
 @param collection_codes Allows filtering by collection code.
 @param collections_filter_type Allows searching based on included or excluded collections.
 @param compositions Allows for filtering based on image composition
 @param embed_content_only Restrict search results to embeddable images. The default is false.
 @param ethnicity Filters search results based on the ethnicity of individuals in an image.
 @param exclude_nudity Exclude images tagged as containing nudity. The default is false.
 @param fields Comma separated list of fields. Allows restricting which fields are returned. If no fields are selected, the summary_set of fields are returned.
 @param file_types Identifies a file type for the image.
 @param graphical_styles Identifies a graphical style for the image.
 @param keyword_ids Comma separated-list of keyword IDs.  If specified, returns images containing the requested keyword(s).  If keyword IDs and phrase are both specified, returns only those images matching the query phrase which also contain the requested keyword(s).
 @param license_models Identifies a licensing model for the image. Possible values are: royaltyfree, rightsmanaged
 @param number_of_people Allows for filtering based on the number of people in the image
 @param orientations Choose images based on their aspect ratios.
 @param page Page number.
 @param page_size Size of page.
 @param phrase Free-text search query.
 @param prestige_content_only Restrict search results to prestige images. The default is false.
 @param product_types Allows filtering by a list of product types.
 @param sort_order Allows sorting of results.
 @param specific_locations Allows for filtering by specific location keywords.
 @param specific_people Allows for filtering based on specific people keywords.
 
 */
-(NSNumber*) Search_GetCreativeImagesByPhraseWithCompletionBlock : (NSString*) ApiKey
            AcceptLanguage : (NSString*) AcceptLanguage 
            Authorization: (NSString*) Authorization
            age_of_people: (NSArray*) age_of_people
            artists: (NSString*) artists
            collection_codes: (NSArray*) collection_codes
            collections_filter_type: (NSString*) collections_filter_type
            compositions: (NSArray*) compositions
            embed_content_only: (NSNumber*) embed_content_only
            ethnicity: (NSArray*) ethnicity
            exclude_nudity: (NSNumber*) exclude_nudity
            fields: (NSArray*) fields
            file_types: (NSArray*) file_types
            graphical_styles: (NSArray*) graphical_styles
            keyword_ids: (NSArray*) keyword_ids
            license_models: (NSArray*) license_models
            number_of_people: (NSArray*) number_of_people
            orientations: (NSArray*) orientations
            page: (NSNumber*) page
            page_size: (NSNumber*) page_size
            phrase: (NSString*) phrase
            prestige_content_only: (NSNumber*) prestige_content_only
            product_types: (NSArray*) product_types
            sort_order: (NSString*) sort_order
            specific_locations: (NSArray*) specific_locations
            specific_people: (NSArray*) specific_people
    completionHandler: (void (^)(SWGCreative_image_search_results* output, NSError* error))completionBlock;

/**

 Search for editorial images only
 

 @param ApiKey ApiKey
 @param AcceptLanguage  AcceptLanguage  parameter optional. Used to restrict the set of natural languages that are preferred as a response to the request.
 @param Authorization Authorization token optional. Used for applying content access restrictions. Use one of the OAuth2 grants to auto-populate this value.
 @param age_of_people Allows for filtering based on age of individuals in an image
 @param artists Free-text search, comma-separated artist search query.
 @param collection_codes Allows filtering by collection code.
 @param collections_filter_type Allows searching based on included or excluded collections.
 @param compositions Allows for filtering based on image composition
 @param date_from If specified, include only images created on or after this date. Dates should be submitted in ISO 8601 format (i.e., YYYY-MM-DD).
 @param date_to If specified, include only images created on or before this date. Dates should be submitted in ISO 8601 format (i.e., YYYY-MM-DD).
 @param editorial_segments Identifies a editorial segment for the image.
 @param embed_content_only Include only images that embeddable. The default is false.
 @param entity_uris specify linked data entity uri.
 @param ethnicity Filters search results based on the ethnicity of individuals in an image.
 @param event_ids Allows for searching based on specific events
 @param exclude_nudity Exclude images tagged as containing nudity. The default is false.
 @param fields Comma separated list of fields. Allows restricting which fields are returned. If no fields are selected, the summary_set of fields are returned.
 @param file_types Identifies a file type for the image.
 @param graphical_styles Identifies a graphical style for the image.
 @param keyword_ids Comma separated-list of keyword IDs.  If specified, returns images containing the requested keyword(s).  If keyword IDs and phrase are both specified, returns only those images matching the query phrase which also contain the requested keyword(s).
 @param number_of_people Allows for filtering based on the number of people in the image
 @param orientations Choose images based on their aspect ratios.
 @param page Page number.
 @param page_size Size of page.
 @param phrase Free-text search query.
 @param product_types Allows filtering by a list of product types.
 @param sort_order Allows sorting of results.
 @param specific_locations Allows for filtering by specific location keywords.
 @param specific_people Allows for filtering based on specific people keywords.
 
 */
-(NSNumber*) Search_GetEditorialImagesByPhraseWithCompletionBlock : (NSString*) ApiKey
            AcceptLanguage : (NSString*) AcceptLanguage 
            Authorization: (NSString*) Authorization
            age_of_people: (NSArray*) age_of_people
            artists: (NSString*) artists
            collection_codes: (NSArray*) collection_codes
            collections_filter_type: (NSString*) collections_filter_type
            compositions: (NSArray*) compositions
            date_from: (SWGDate*) date_from
            date_to: (SWGDate*) date_to
            editorial_segments: (NSArray*) editorial_segments
            embed_content_only: (NSNumber*) embed_content_only
            entity_uris: (NSArray*) entity_uris
            ethnicity: (NSArray*) ethnicity
            event_ids: (NSArray*) event_ids
            exclude_nudity: (NSNumber*) exclude_nudity
            fields: (NSArray*) fields
            file_types: (NSArray*) file_types
            graphical_styles: (NSArray*) graphical_styles
            keyword_ids: (NSArray*) keyword_ids
            number_of_people: (NSArray*) number_of_people
            orientations: (NSArray*) orientations
            page: (NSNumber*) page
            page_size: (NSNumber*) page_size
            phrase: (NSString*) phrase
            product_types: (NSArray*) product_types
            sort_order: (NSString*) sort_order
            specific_locations: (NSArray*) specific_locations
            specific_people: (NSArray*) specific_people
    completionHandler: (void (^)(SWGEditorial_image_search_results* output, NSError* error))completionBlock;

/**

 <b>*** BETA ***</b> Search for both creative and editorial videos
 

 @param ApiKey ApiKey
 @param AcceptLanguage  AcceptLanguage  parameter optional. Used to restrict the set of natural languages that are preferred as a response to the request.
 @param Authorization Authorization token optional. Used for applying content access restrictions. Use one of the OAuth2 grants to auto-populate this value.
 @param collection_codes Allows filtering by collection code.
 @param collections_filter_type Allows searching based on included or excluded collections.
 @param exclude_nudity Exclude images tagged as containing nudity. The default is false.
 @param fields Comma separated list of fields. Allows restricting which fields are returned. If no fields are selected, the summary_set of fields are returned.
 @param license_models Identifies a licensing model for the image.
 @param page Page number.
 @param page_size Size of page.
 @param phrase Free-text search query.
 @param product_types Allows filtering by a list of product types.
 
 */
-(NSNumber*) Search_GetVideosByPhraseWithCompletionBlock : (NSString*) ApiKey
            AcceptLanguage : (NSString*) AcceptLanguage 
            Authorization: (NSString*) Authorization
            collection_codes: (NSArray*) collection_codes
            collections_filter_type: (NSString*) collections_filter_type
            exclude_nudity: (NSNumber*) exclude_nudity
            fields: (NSArray*) fields
            license_models: (NSArray*) license_models
            page: (NSNumber*) page
            page_size: (NSNumber*) page_size
            phrase: (NSString*) phrase
            product_types: (NSArray*) product_types
    completionHandler: (void (^)(SWGVideo_search_results* output, NSError* error))completionBlock;

/**

 <b>*** BETA ***</b> Search for creative videos
 

 @param ApiKey ApiKey
 @param AcceptLanguage  AcceptLanguage  parameter optional. Used to restrict the set of natural languages that are preferred as a response to the request.
 @param Authorization Authorization token optional. Used for applying content access restrictions. Use one of the OAuth2 grants to auto-populate this value.
 @param collection_codes Allows filtering by collection code.
 @param collections_filter_type Allows searching based on included or excluded collections.
 @param exclude_nudity Exclude images tagged as containing nudity. The default is false.
 @param fields Comma separated list of fields. Allows restricting which fields are returned. If no fields are selected, the summary_set of fields are returned.
 @param license_models Identifies a licensing model for the image.
 @param page Page number.
 @param page_size Size of page.
 @param phrase Free-text search query.
 @param product_types Allows filtering by a list of product types.
 
 */
-(NSNumber*) Search_GetCreativeVideosByPhraseWithCompletionBlock : (NSString*) ApiKey
            AcceptLanguage : (NSString*) AcceptLanguage 
            Authorization: (NSString*) Authorization
            collection_codes: (NSArray*) collection_codes
            collections_filter_type: (NSString*) collections_filter_type
            exclude_nudity: (NSNumber*) exclude_nudity
            fields: (NSArray*) fields
            license_models: (NSArray*) license_models
            page: (NSNumber*) page
            page_size: (NSNumber*) page_size
            phrase: (NSString*) phrase
            product_types: (NSArray*) product_types
    completionHandler: (void (^)(SWGCreative_video_search_results* output, NSError* error))completionBlock;

/**

 <b>*** BETA ***</b> Search for editorial videos
 

 @param ApiKey ApiKey
 @param AcceptLanguage  AcceptLanguage  parameter optional. Used to restrict the set of natural languages that are preferred as a response to the request.
 @param Authorization Authorization token optional. Used for applying content access restrictions. Use one of the OAuth2 grants to auto-populate this value.
 @param collection_codes Allows filtering by collection code.
 @param collections_filter_type Allows searching based on included or excluded collections.
 @param entity_uris specify link data entity uri.
 @param exclude_nudity Exclude images tagged as containing nudity. The default is false.
 @param fields Comma separated list of fields. Allows restricting which fields are returned. If no fields are selected, the summary_set of fields are returned.
 @param page Page number.
 @param page_size Size of page.
 @param phrase Free-text search query.
 @param product_types Allows filtering by a list of product types.
 
 */
-(NSNumber*) Search_GetEditorialVideosByPhraseWithCompletionBlock : (NSString*) ApiKey
            AcceptLanguage : (NSString*) AcceptLanguage 
            Authorization: (NSString*) Authorization
            collection_codes: (NSArray*) collection_codes
            collections_filter_type: (NSString*) collections_filter_type
            entity_uris: (NSArray*) entity_uris
            exclude_nudity: (NSNumber*) exclude_nudity
            fields: (NSArray*) fields
            page: (NSNumber*) page
            page_size: (NSNumber*) page_size
            phrase: (NSString*) phrase
            product_types: (NSArray*) product_types
    completionHandler: (void (^)(SWGEditorial_video_search_results* output, NSError* error))completionBlock;

@end