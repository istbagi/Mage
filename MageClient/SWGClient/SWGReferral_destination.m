#import "SWGDate.h"
#import "SWGReferral_destination.h"

@implementation SWGReferral_destination

-(id)site_name: (NSString*) site_name
    uri: (NSString*) uri { 
    
    _site_name = site_name;
    _uri = uri;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _site_name = dict[@"site_name"];
        _uri = dict[@"uri"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_site_name != nil)
        dict[@"site_name"] = _site_name;
    
    
    
    
    if(_uri != nil)
        dict[@"uri"] = _uri;
    
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
