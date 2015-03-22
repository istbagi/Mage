#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SWGCountry : SWGObject

@property(nonatomic) NSString* iso_alpha_2;  
@property(nonatomic) NSString* iso_alpha_3;  
@property(nonatomic) NSString* name;  
- (id) iso_alpha_2: (NSString*) iso_alpha_2
  
       iso_alpha_3: (NSString*) iso_alpha_3
  
       name: (NSString*) name;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
