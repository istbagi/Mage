#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGVideo_search_item.h"


@interface SWGEditorial_video_search_results : SWGObject

@property(nonatomic) NSNumber* result_count;  
@property(nonatomic) NSArray* videos;  
- (id) result_count: (NSNumber*) result_count
  
       videos: (NSArray*) videos;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
