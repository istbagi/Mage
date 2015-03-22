#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDownload.h"


@interface SWGDownload_size : SWGObject

@property(nonatomic) NSString* _description;
@property(nonatomic) NSArray* downloads;  
@property(nonatomic) NSString* name;  
- (id) description: (NSString*) description
  
       downloads: (NSArray*) downloads
  
       name: (NSString*) name;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
