#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"


@interface SWGPreviousPurchase : SWGObject

@property(nonatomic) SWGDate* date_purchased;  
@property(nonatomic) NSString* image_id;  
@property(nonatomic) NSString* license_model;  /* Identifies a licensing model for the image. Possible values are: royaltyfree, rightsmanaged  */
@property(nonatomic) NSString* order_id;  
@property(nonatomic) NSString* thumb_uri;  
- (id) date_purchased: (SWGDate*) date_purchased
  
       image_id: (NSString*) image_id
  
       license_model: (NSString*) license_model
  
       order_id: (NSString*) order_id
  
       thumb_uri: (NSString*) thumb_uri;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
