#import "SWGDate.h"
#import "SWGCollection.h"

@implementation SWGCollection

-(id)asset_family: (NSString*) asset_family
    code: (NSString*) code
    _id: (NSNumber*) _id
    license_model: (NSString*) license_model
    name: (NSString*) name
    product_types: (NSArray*) product_types { 
    
    _asset_family = asset_family;
    _code = code;
    __id = _id;
    _license_model = license_model;
    _name = name;
    _product_types = product_types;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _asset_family = dict[@"asset_family"];
        _code = dict[@"code"];
        __id = dict[@"id"];
        _license_model = dict[@"license_model"];
        _name = dict[@"name"];
        _product_types = dict[@"product_types"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_asset_family != nil)
        dict[@"asset_family"] = _asset_family;
    
    
    
    
    if(_code != nil)
        dict[@"code"] = _code;
    
    
    
    
    if(__id != nil)
        dict[@"id"] = __id;
    
    
    
    
    if(_license_model != nil)
        dict[@"license_model"] = _license_model;
    
    
    
    
    if(_name != nil)
        dict[@"name"] = _name;
    
    
    
    
    
    if(_product_types != nil) {
        if([_product_types isKindOfClass:[NSArray class]]) {
            dict[@"_product_types"] = [[NSArray alloc] initWithArray: (NSArray*) _product_types copyItems:true];
        }
        else if([_product_types isKindOfClass:[NSDictionary class]]) {
            dict[@"product_types"] = [[NSDictionary alloc] initWithDictionary:(NSDictionary*)_product_types copyItems:true];
        }
    }
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
