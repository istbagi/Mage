#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGCountry.h"


@interface SWGCountries : SWGObject

@property(nonatomic) NSArray* countries;  
- (id) countries: (NSArray*) countries;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
