#import "SWGDate.h"
#import "SWGMax_dimensions.h"

@implementation SWGMax_dimensions

-(id)height: (NSNumber*) height
    width: (NSNumber*) width { 
    
    _height = height;
    _width = width;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _height = dict[@"height"];
        _width = dict[@"width"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_height != nil)
        dict[@"height"] = _height;
    
    
    
    
    if(_width != nil)
        dict[@"width"] = _width;
    
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
