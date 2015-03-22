#import "SWGDate.h"
#import "SWGHero_display_size.h"

@implementation SWGHero_display_size

-(id)name: (NSString*) name
    is_watermarked: (NSNumber*) is_watermarked
    uri: (NSString*) uri { 
    
    _name = name;
    _is_watermarked = is_watermarked;
    _uri = uri;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _name = dict[@"name"];
        _is_watermarked = dict[@"is_watermarked"];
        _uri = dict[@"uri"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_name != nil)
        dict[@"name"] = _name;
    
    
    
    
    if(_is_watermarked != nil)
        dict[@"is_watermarked"] = _is_watermarked;
    
    
    
    
    if(_uri != nil)
        dict[@"uri"] = _uri;
    
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
