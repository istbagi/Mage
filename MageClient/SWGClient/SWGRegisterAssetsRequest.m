#import "SWGDate.h"
#import "SWGRegisterAssetsRequest.h"

@implementation SWGRegisterAssetsRequest

-(id)asset_ids: (NSArray*) asset_ids { 
    
    _asset_ids = asset_ids;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _asset_ids = dict[@"asset_ids"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    
    if(_asset_ids != nil) {
        if([_asset_ids isKindOfClass:[NSArray class]]) {
            dict[@"_asset_ids"] = [[NSArray alloc] initWithArray: (NSArray*) _asset_ids copyItems:true];
        }
        else if([_asset_ids isKindOfClass:[NSDictionary class]]) {
            dict[@"asset_ids"] = [[NSDictionary alloc] initWithDictionary:(NSDictionary*)_asset_ids copyItems:true];
        }
    }
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
