#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SWGLocation : SWGObject

@property(nonatomic) NSString* city;  
@property(nonatomic) NSString* country;  
@property(nonatomic) NSString* state_province;  
@property(nonatomic) NSString* venue;  
- (id) city: (NSString*) city
  
       country: (NSString*) country
  
       state_province: (NSString*) state_province
  
       venue: (NSString*) venue;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
