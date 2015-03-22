#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGCollection.h"


@interface SWGCollections : SWGObject

@property(nonatomic) NSArray* collections;  
- (id) collections: (NSArray*) collections;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
