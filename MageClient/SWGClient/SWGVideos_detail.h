#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGVideo_detail.h"


@interface SWGVideos_detail : SWGObject

@property(nonatomic) NSArray* Videos;  
@property(nonatomic) NSArray* images_not_found;  
- (id) Videos: (NSArray*) Videos
  
       images_not_found: (NSArray*) images_not_found;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
