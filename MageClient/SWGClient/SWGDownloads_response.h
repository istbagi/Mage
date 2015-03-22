#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDownload.h"


@interface SWGDownloads_response : SWGObject

@property(nonatomic) NSNumber* result_count;  
@property(nonatomic) NSArray* downloads;  
- (id) result_count: (NSNumber*) result_count
  
       downloads: (NSArray*) downloads;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
