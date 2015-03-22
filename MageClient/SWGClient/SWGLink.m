#import "SWGDate.h"
#import "SWGLink.h"

@implementation SWGLink

-(id)rel: (NSString*) rel
    uri: (NSString*) uri { 
    
    _rel = rel;
    _uri = uri;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _rel = dict[@"rel"];
        _uri = dict[@"uri"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_rel != nil)
        dict[@"rel"] = _rel;
    
    
    
    
    if(_uri != nil)
        dict[@"uri"] = _uri;
    
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
