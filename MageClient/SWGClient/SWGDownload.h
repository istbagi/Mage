#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"


@interface SWGDownload : SWGObject

@property(nonatomic) SWGDate* date_downloaded;  
@property(nonatomic) NSString* _id;  
@property(nonatomic) NSString* product_type;  /* License agreement applied to this download. Possible values are: premiumaccess, easyaccess, editorialsubscription, imagepack, royaltyfreesubscription, sandbox  */
@property(nonatomic) NSString* thumb_uri;  
- (id) date_downloaded: (SWGDate*) date_downloaded
  
       _id: (NSString*) _id
  
       product_type: (NSString*) product_type
  
       thumb_uri: (NSString*) thumb_uri;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
