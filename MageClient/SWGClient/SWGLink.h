#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SWGLink : SWGObject

@property(nonatomic) NSString* rel;  
@property(nonatomic) NSString* uri;  
- (id) rel: (NSString*) rel
  
       uri: (NSString*) uri;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
