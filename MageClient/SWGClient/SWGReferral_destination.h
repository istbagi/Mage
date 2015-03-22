#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SWGReferral_destination : SWGObject

@property(nonatomic) NSString* site_name;  
@property(nonatomic) NSString* uri;  
- (id) site_name: (NSString*) site_name
  
       uri: (NSString*) uri;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
