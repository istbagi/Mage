#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SWGKeywords : SWGObject

@property(nonatomic) NSString* keyword_id;  
@property(nonatomic) NSString* text;  
@property(nonatomic) NSString* type;  
@property(nonatomic) NSNumber* relevance;  
- (id) keyword_id: (NSString*) keyword_id
  
       text: (NSString*) text
  
       type: (NSString*) type
  
       relevance: (NSNumber*) relevance;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
