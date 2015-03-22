#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGPreviousPurchase.h"


@interface SWGPreviousPurchases : SWGObject

@property(nonatomic) NSNumber* result_count;  
@property(nonatomic) NSArray* previous_purchases;  
- (id) result_count: (NSNumber*) result_count
  
       previous_purchases: (NSArray*) previous_purchases;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
