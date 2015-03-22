#import "SWGDate.h"
#import "SWGCountry.h"

@implementation SWGCountry

-(id)iso_alpha_2: (NSString*) iso_alpha_2
    iso_alpha_3: (NSString*) iso_alpha_3
    name: (NSString*) name { 
    
    _iso_alpha_2 = iso_alpha_2;
    _iso_alpha_3 = iso_alpha_3;
    _name = name;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _iso_alpha_2 = dict[@"iso_alpha_2"];
        _iso_alpha_3 = dict[@"iso_alpha_3"];
        _name = dict[@"name"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_iso_alpha_2 != nil)
        dict[@"iso_alpha_2"] = _iso_alpha_2;
    
    
    
    
    if(_iso_alpha_3 != nil)
        dict[@"iso_alpha_3"] = _iso_alpha_3;
    
    
    
    
    if(_name != nil)
        dict[@"name"] = _name;
    
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
