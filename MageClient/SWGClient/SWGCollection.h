#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SWGCollection : SWGObject

@property(nonatomic) NSString* asset_family;  /* Indicates the asset family classification. Possible values are: creative, editorial  */
@property(nonatomic) NSString* code;  
@property(nonatomic) NSNumber* _id;  
@property(nonatomic) NSString* license_model;  /* Identifies a licensing model for the image. Possible values are: royaltyfree, rightsmanaged, rightsready  */
@property(nonatomic) NSString* name;  
@property(nonatomic) NSArray* product_types;  /* License agreements applied to this collection. Possible values are: premiumaccess, easyaccess, editorialsubscription, imagepack, royaltyfreesubscription  */
- (id) asset_family: (NSString*) asset_family
  
       code: (NSString*) code
  
       _id: (NSNumber*) _id
  
       license_model: (NSString*) license_model
  
       name: (NSString*) name
  
       product_types: (NSArray*) product_types;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
