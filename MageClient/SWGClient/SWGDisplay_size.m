#import "SWGDate.h"
#import "SWGDisplay_size.h"

@implementation SWGDisplay_size

-(id)is_watermarked: (NSNumber*) is_watermarked
    name: (NSString*) name
    uri: (NSString*) uri { 
    
    _is_watermarked = is_watermarked;
    _name = name;
    _uri = uri;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _is_watermarked = dict[@"is_watermarked"];
        _name = dict[@"name"];
        _uri = dict[@"uri"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_is_watermarked != nil)
        dict[@"is_watermarked"] = _is_watermarked;
    
    
    
    
    if(_name != nil)
        dict[@"name"] = _name;
    
    
    
    
    if(_uri != nil)
        dict[@"uri"] = _uri;
    
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
