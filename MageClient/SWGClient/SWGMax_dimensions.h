#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SWGMax_dimensions : SWGObject

@property(nonatomic) NSNumber* height;  
@property(nonatomic) NSNumber* width;  
- (id) height: (NSNumber*) height
  
       width: (NSNumber*) width;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
