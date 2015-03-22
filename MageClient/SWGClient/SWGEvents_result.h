#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGEvent.h"


@interface SWGEvents_result : SWGObject

@property(nonatomic) NSArray* events;  
@property(nonatomic) NSArray* events_not_found;  
- (id) events: (NSArray*) events
  
       events_not_found: (NSArray*) events_not_found;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
