#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SWGEmail : SWGObject

@property(nonatomic) NSString* email_address;  
@property(nonatomic) NSNumber* email_marketing_enabled;  
- (id) email_address: (NSString*) email_address
  
       email_marketing_enabled: (NSNumber*) email_marketing_enabled;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
