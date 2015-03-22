#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGProduct.h"


@interface SWGProductsResult : SWGObject

@property(nonatomic) NSArray* products;  
- (id) products: (NSArray*) products;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
