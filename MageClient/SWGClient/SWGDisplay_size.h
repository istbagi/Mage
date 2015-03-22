#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SWGDisplay_size : SWGObject

@property(nonatomic) NSNumber* is_watermarked;  
@property(nonatomic) NSString* name;  
@property(nonatomic) NSString* uri;  
- (id) is_watermarked: (NSNumber*) is_watermarked
  
       name: (NSString*) name
  
       uri: (NSString*) uri;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
