#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDownload_size.h"
#import "SWGAllowed_use.h"
#import "SWGDate.h"
#import "SWGKeywords.h"
#import "SWGDisplay_size.h"
#import "SWGLink.h"
#import "SWGMax_dimensions.h"
#import "SWGReferral_destination.h"


@interface SWGImage_detail : SWGObject

@property(nonatomic) SWGAllowed_use* allowed_use;  
@property(nonatomic) NSString* artist;  
@property(nonatomic) NSString* artist_title;  
@property(nonatomic) NSString* asset_family;  /* Indicates the asset family classification. Possible values are: creative, editorial  */
@property(nonatomic) NSNumber* call_for_image;  
@property(nonatomic) NSString* caption;  
@property(nonatomic) NSString* city;  
@property(nonatomic) NSString* collection_code;  
@property(nonatomic) NSNumber* collection_id;  
@property(nonatomic) NSString* collection_name;  
@property(nonatomic) NSString* color_type;  /* Indicates whether the image is color or black and white. Possible values are color, black_and_white, and null  */
@property(nonatomic) NSString* copyright;  
@property(nonatomic) NSString* country;  
@property(nonatomic) NSString* credit_line;  
@property(nonatomic) SWGDate* date_created;  
@property(nonatomic) SWGDate* date_submitted;  
@property(nonatomic) NSArray* display_sizes;  
@property(nonatomic) NSArray* download_sizes;  
@property(nonatomic) NSArray* editorial_segments;  /* List of editorial segments for the image. Possible values are archival, entertainment, news, publicity, royalty, sport  */
@property(nonatomic) NSString* editorial_source_name;  
@property(nonatomic) NSArray* event_ids;  
@property(nonatomic) NSString* graphical_style;  
@property(nonatomic) NSString* _id;  
@property(nonatomic) NSArray* keywords;  
@property(nonatomic) NSArray* largest_downloads;  
@property(nonatomic) NSString* license_model;  /* Identifies a licensing model for the image. Possible values are: RF, RM (royaltyfree, rightsmanaged)  */
@property(nonatomic) NSArray* links;  
@property(nonatomic) SWGMax_dimensions* max_dimensions;  
@property(nonatomic) NSString* orientation;  /* Indicates orientation of the image. Possible values are: Horizontal, PanoramicHorizontal, PanoramicVertical, Square, Vertical, and null  */
@property(nonatomic) NSArray* people;  
@property(nonatomic) NSNumber* prestige;  
@property(nonatomic) NSArray* product_types;  /* License agreements for the image. Possible values are: premiumaccess, easyaccess, editorialsubscription, imagepack, royaltyfreesubscription  */
@property(nonatomic) NSNumber* quality_rank;  
@property(nonatomic) NSArray* referral_destinations;  
@property(nonatomic) NSString* state_province;  
@property(nonatomic) NSString* title;  
@property(nonatomic) NSString* uri_oembed;  
- (id) allowed_use: (SWGAllowed_use*) allowed_use
  
       artist: (NSString*) artist
  
       artist_title: (NSString*) artist_title
  
       asset_family: (NSString*) asset_family
  
       call_for_image: (NSNumber*) call_for_image
  
       caption: (NSString*) caption
  
       city: (NSString*) city
  
       collection_code: (NSString*) collection_code
  
       collection_id: (NSNumber*) collection_id
  
       collection_name: (NSString*) collection_name
  
       color_type: (NSString*) color_type
  
       copyright: (NSString*) copyright
  
       country: (NSString*) country
  
       credit_line: (NSString*) credit_line
  
       date_created: (SWGDate*) date_created
  
       date_submitted: (SWGDate*) date_submitted
  
       display_sizes: (NSArray*) display_sizes
  
       download_sizes: (NSArray*) download_sizes
  
       editorial_segments: (NSArray*) editorial_segments
  
       editorial_source_name: (NSString*) editorial_source_name
  
       event_ids: (NSArray*) event_ids
  
       graphical_style: (NSString*) graphical_style
  
       _id: (NSString*) _id
  
       keywords: (NSArray*) keywords
  
       largest_downloads: (NSArray*) largest_downloads
  
       license_model: (NSString*) license_model
  
       links: (NSArray*) links
  
       max_dimensions: (SWGMax_dimensions*) max_dimensions
  
       orientation: (NSString*) orientation
  
       people: (NSArray*) people
  
       prestige: (NSNumber*) prestige
  
       product_types: (NSArray*) product_types
  
       quality_rank: (NSNumber*) quality_rank
  
       referral_destinations: (NSArray*) referral_destinations
  
       state_province: (NSString*) state_province
  
       title: (NSString*) title
  
       uri_oembed: (NSString*) uri_oembed;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
