#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SWGAllowed_use : SWGObject

@property(nonatomic) NSString* how_can_i_use_it;  
@property(nonatomic) NSString* release_info;  
@property(nonatomic) NSArray* usage_restrictions;  
- (id) how_can_i_use_it: (NSString*) how_can_i_use_it
  
       release_info: (NSString*) release_info
  
       usage_restrictions: (NSArray*) usage_restrictions;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
