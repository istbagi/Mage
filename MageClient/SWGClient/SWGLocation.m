#import "SWGDate.h"
#import "SWGLocation.h"

@implementation SWGLocation

-(id)city: (NSString*) city
    country: (NSString*) country
    state_province: (NSString*) state_province
    venue: (NSString*) venue { 
    
    _city = city;
    _country = country;
    _state_province = state_province;
    _venue = venue;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _city = dict[@"city"];
        _country = dict[@"country"];
        _state_province = dict[@"state_province"];
        _venue = dict[@"venue"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_city != nil)
        dict[@"city"] = _city;
    
    
    
    
    if(_country != nil)
        dict[@"country"] = _country;
    
    
    
    
    if(_state_province != nil)
        dict[@"state_province"] = _state_province;
    
    
    
    
    if(_venue != nil)
        dict[@"venue"] = _venue;
    
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
