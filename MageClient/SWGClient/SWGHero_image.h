#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGHero_display_size.h"


@interface SWGHero_image : SWGObject

@property(nonatomic) NSString* _id;  
@property(nonatomic) NSArray* display_sizes;  
- (id) _id: (NSString*) _id
  
       display_sizes: (NSArray*) display_sizes;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
