#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"


@interface SWGAsset_usage : SWGObject

@property(nonatomic) NSString* asset_id;  /* Id of the asset used  */
@property(nonatomic) NSNumber* quantity;  /* The number of times the asset was used  */
@property(nonatomic) SWGDate* usage_date;  /* Date of usage  */
- (id) asset_id: (NSString*) asset_id
  
       quantity: (NSNumber*) quantity
  
       usage_date: (SWGDate*) usage_date;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
