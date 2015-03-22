#import "SWGDate.h"
#import "SWGProductsResult.h"

@implementation SWGProductsResult

-(id)products: (NSArray*) products { 
    
    _products = products;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        id products_dict = dict[@"products"];
        if([products_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)products_dict count]];
            if([(NSArray*)products_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)products_dict) {
                    SWGProduct* d = [[SWGProduct  alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _products = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _products = [[NSArray alloc] init];
            }
        }
        else {
            _products = [[NSArray alloc] init];
        }
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    if(_products != nil){
        
        if([_products isKindOfClass:[NSArray class]]){
        NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGProduct *products in _products) {
                [array addObject:[(SWGObject*)products asDictionary]];
            }
            dict[@"products"] = array;
        }
        
        
    }
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
