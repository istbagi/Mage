#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDownload.h"
#import "SWGAllowed_use.h"
#import "SWGDate.h"
#import "SWGKeywords.h"
#import "SWGDisplay_size.h"
#import "SWGMax_dimensions.h"
#import "SWGReferral_destination.h"


@interface SWGCreative_image_search_item : SWGObject

@property(nonatomic) SWGAllowed_use* allowed_use;  
@property(nonatomic) NSString* artist;  
@property(nonatomic) NSString* asset_family;  /* Indicates the asset family classification. Possible values are: creative, editorial  */
@property(nonatomic) NSNumber* call_for_image;  
@property(nonatomic) NSString* caption;  
@property(nonatomic) NSString* collection_code;  
@property(nonatomic) NSNumber* collection_id;  
@property(nonatomic) NSString* collection_name;  
@property(nonatomic) NSString* color_type;  /* Indicates whether the image is color or black and white. Possible values are color, black_and_white, and null  */
@property(nonatomic) NSString* copyright;  
@property(nonatomic) SWGDate* date_created;  
@property(nonatomic) NSArray* display_sizes;  
@property(nonatomic) NSString* graphical_style;  
@property(nonatomic) NSString* _id;  
@property(nonatomic) NSArray* keywords;  
@property(nonatomic) NSArray* largest_downloads;  
@property(nonatomic) NSString* license_model;  /* Identifies a licensing model for the image. Possible values are: royaltyfree, rightsmanaged  */
@property(nonatomic) SWGMax_dimensions* max_dimensions;  
@property(nonatomic) NSString* orientation;  /* Indicates orientation of the image. Possible values are: Horizontal, PanoramicHorizontal, PanoramicVertical, Square, Vertical, and null  */
@property(nonatomic) NSNumber* prestige;  
@property(nonatomic) NSArray* product_types;  /* License agreements for the image. Possible values are: premiumaccess, easyaccess, editorialsubscription, imagepack, royaltyfreesubscription  */
@property(nonatomic) NSNumber* quality_rank;  
@property(nonatomic) NSArray* referral_destinations;  
@property(nonatomic) NSString* title;  
@property(nonatomic) NSString* uri_oembed;  
- (id) allowed_use: (SWGAllowed_use*) allowed_use
  
       artist: (NSString*) artist
  
       asset_family: (NSString*) asset_family
  
       call_for_image: (NSNumber*) call_for_image
  
       caption: (NSString*) caption
  
       collection_code: (NSString*) collection_code
  
       collection_id: (NSNumber*) collection_id
  
       collection_name: (NSString*) collection_name
  
       color_type: (NSString*) color_type
  
       copyright: (NSString*) copyright
  
       date_created: (SWGDate*) date_created
  
       display_sizes: (NSArray*) display_sizes
  
       graphical_style: (NSString*) graphical_style
  
       _id: (NSString*) _id
  
       keywords: (NSArray*) keywords
  
       largest_downloads: (NSArray*) largest_downloads
  
       license_model: (NSString*) license_model
  
       max_dimensions: (SWGMax_dimensions*) max_dimensions
  
       orientation: (NSString*) orientation
  
       prestige: (NSNumber*) prestige
  
       product_types: (NSArray*) product_types
  
       quality_rank: (NSNumber*) quality_rank
  
       referral_destinations: (NSArray*) referral_destinations
  
       title: (NSString*) title
  
       uri_oembed: (NSString*) uri_oembed;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
