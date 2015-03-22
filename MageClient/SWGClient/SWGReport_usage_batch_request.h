#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGAsset_usage.h"


@interface SWGReport_usage_batch_request : SWGObject

@property(nonatomic) NSArray* asset_usages;  /* List of AssetUsage Entries  */
- (id) asset_usages: (NSArray*) asset_usages;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
