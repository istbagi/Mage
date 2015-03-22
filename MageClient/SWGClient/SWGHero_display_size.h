#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SWGHero_display_size : SWGObject

@property(nonatomic) NSString* name;  
@property(nonatomic) NSNumber* is_watermarked;  
@property(nonatomic) NSString* uri;  
- (id) name: (NSString*) name
  
       is_watermarked: (NSNumber*) is_watermarked
  
       uri: (NSString*) uri;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
