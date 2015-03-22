#import "SWGDate.h"
#import "SWGReport_usage_batch_request.h"

@implementation SWGReport_usage_batch_request

-(id)asset_usages: (NSArray*) asset_usages { 
    
    _asset_usages = asset_usages;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        id asset_usages_dict = dict[@"asset_usages"];
        if([asset_usages_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)asset_usages_dict count]];
            if([(NSArray*)asset_usages_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)asset_usages_dict) {
                    SWGAsset_usage* d = [[SWGAsset_usage  alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _asset_usages = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _asset_usages = [[NSArray alloc] init];
            }
        }
        else {
            _asset_usages = [[NSArray alloc] init];
        }
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    if(_asset_usages != nil){
        
        if([_asset_usages isKindOfClass:[NSArray class]]){
        NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGAsset_usage *asset_usages in _asset_usages) {
                [array addObject:[(SWGObject*)asset_usages asDictionary]];
            }
            dict[@"asset_usages"] = array;
        }
        
        
    }
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
