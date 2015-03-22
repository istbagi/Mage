#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SWGPassword_change : SWGObject

@property(nonatomic) NSString* current_password;  
@property(nonatomic) NSString* password;
- (id) current_password: (NSString*) current_password
       password: (NSString*) password;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
