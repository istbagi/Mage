#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGImage_detail.h"


@interface SWGImages_detail : SWGObject

@property(nonatomic) NSArray* images;  
@property(nonatomic) NSArray* images_not_found;  
- (id) images: (NSArray*) images
  
       images_not_found: (NSArray*) images_not_found;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
