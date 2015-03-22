#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SWGRegisterAssetsRequest : SWGObject

@property(nonatomic) NSArray* asset_ids;  
- (id) asset_ids: (NSArray*) asset_ids;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
