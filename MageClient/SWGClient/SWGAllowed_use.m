#import "SWGDate.h"
#import "SWGAllowed_use.h"

@implementation SWGAllowed_use

-(id)how_can_i_use_it: (NSString*) how_can_i_use_it
    release_info: (NSString*) release_info
    usage_restrictions: (NSArray*) usage_restrictions { 
    
    _how_can_i_use_it = how_can_i_use_it;
    _release_info = release_info;
    _usage_restrictions = usage_restrictions;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _how_can_i_use_it = dict[@"how_can_i_use_it"];
        _release_info = dict[@"release_info"];
        _usage_restrictions = dict[@"usage_restrictions"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_how_can_i_use_it != nil)
        dict[@"how_can_i_use_it"] = _how_can_i_use_it;
    
    
    
    
    if(_release_info != nil)
        dict[@"release_info"] = _release_info;
    
    
    
    
    
    if(_usage_restrictions != nil) {
        if([_usage_restrictions isKindOfClass:[NSArray class]]) {
            dict[@"_usage_restrictions"] = [[NSArray alloc] initWithArray: (NSArray*) _usage_restrictions copyItems:true];
        }
        else if([_usage_restrictions isKindOfClass:[NSDictionary class]]) {
            dict[@"usage_restrictions"] = [[NSDictionary alloc] initWithDictionary:(NSDictionary*)_usage_restrictions copyItems:true];
        }
    }
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
