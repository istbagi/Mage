#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDownload.h"
#import "SWGAllowed_use.h"
#import "SWGDate.h"
#import "SWGDisplay_size.h"


@interface SWGVideo_search_item : SWGObject

@property(nonatomic) NSString* _id;  
@property(nonatomic) SWGAllowed_use* allowed_use;  
@property(nonatomic) NSString* artist;  
@property(nonatomic) NSString* asset_family;  /* Indicates the asset family classification. Possible values are: creative, editorial  */
@property(nonatomic) NSString* caption;  
@property(nonatomic) NSString* clip_length;  
@property(nonatomic) NSNumber* collection_id;  
@property(nonatomic) NSString* collection_code;  
@property(nonatomic) NSString* collection_name;  
@property(nonatomic) NSString* color_type;  /* Indicates whether the image is color or black and white. Possible values are color, black_and_white, and null  */
@property(nonatomic) NSString* copyright;  
@property(nonatomic) SWGDate* date_created;  
@property(nonatomic) NSArray* display_sizes;  
@property(nonatomic) NSString* era;  /* The era of the video. Possible values are: archival, contemporary, and null  */
@property(nonatomic) NSArray* largest_downloads;  
@property(nonatomic) NSString* license_model;  /* Identifies a licensing model for the image. Possible values are: royaltyfree, rightsready  */
@property(nonatomic) NSString* mastered_to;  
@property(nonatomic) NSString* originally_shot_on;  
@property(nonatomic) NSArray* product_types;  /* License agreements for the video. Possible values are: premiumaccess, easyaccess, editorialsubscription, imagepack, royaltyfreesubscription  */
@property(nonatomic) NSString* shot_speed;  /* The speed the video was shot. Possible values are: real_time, slow_motion, time_lapse, and null  */
@property(nonatomic) NSString* source;  
@property(nonatomic) NSString* title;  
- (id) _id: (NSString*) _id
  
       allowed_use: (SWGAllowed_use*) allowed_use
  
       artist: (NSString*) artist
  
       asset_family: (NSString*) asset_family
  
       caption: (NSString*) caption
  
       clip_length: (NSString*) clip_length
  
       collection_id: (NSNumber*) collection_id
  
       collection_code: (NSString*) collection_code
  
       collection_name: (NSString*) collection_name
  
       color_type: (NSString*) color_type
  
       copyright: (NSString*) copyright
  
       date_created: (SWGDate*) date_created
  
       display_sizes: (NSArray*) display_sizes
  
       era: (NSString*) era
  
       largest_downloads: (NSArray*) largest_downloads
  
       license_model: (NSString*) license_model
  
       mastered_to: (NSString*) mastered_to
  
       originally_shot_on: (NSString*) originally_shot_on
  
       product_types: (NSArray*) product_types
  
       shot_speed: (NSString*) shot_speed
  
       source: (NSString*) source
  
       title: (NSString*) title;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
