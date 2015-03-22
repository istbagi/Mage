#import <Foundation/Foundation.h>
#import "SWGEnums.h"

@interface SWGObject : NSObject
- (id) initWithValues:(NSDictionary*)dict;
- (NSDictionary*) asDictionary;
@end
