#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGCreative_image_search_item.h"


@interface SWGCreative_image_search_results : SWGObject

@property(nonatomic) NSNumber* result_count;  
@property(nonatomic) NSArray* images;  
- (id) result_count: (NSNumber*) result_count
  
       images: (NSArray*) images;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
