#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"
#import "SWGLocation.h"
#import "SWGHero_image.h"


@interface SWGEvent : SWGObject

@property(nonatomic) NSNumber* _id;  
@property(nonatomic) NSNumber* child_event_count;  
@property(nonatomic) NSArray* editorial_segments;  /* List of editorial segments for the image. Possible values are archival, entertainment, news, publicity, royalty, sport  */
@property(nonatomic) SWGHero_image* hero_image;  
@property(nonatomic) NSNumber* image_count;  
@property(nonatomic) SWGLocation* location;  
@property(nonatomic) NSString* name;  
@property(nonatomic) SWGDate* start_date;  
- (id) _id: (NSNumber*) _id
  
       child_event_count: (NSNumber*) child_event_count
  
       editorial_segments: (NSArray*) editorial_segments
  
       hero_image: (SWGHero_image*) hero_image
  
       image_count: (NSNumber*) image_count
  
       location: (SWGLocation*) location
  
       name: (NSString*) name
  
       start_date: (SWGDate*) start_date;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
