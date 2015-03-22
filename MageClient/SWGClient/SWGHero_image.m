#import "SWGDate.h"
#import "SWGHero_image.h"

@implementation SWGHero_image

-(id)_id: (NSString*) _id
    display_sizes: (NSArray*) display_sizes { 
    
    __id = _id;
    _display_sizes = display_sizes;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        __id = dict[@"id"];
        
        id display_sizes_dict = dict[@"display_sizes"];
        if([display_sizes_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)display_sizes_dict count]];
            if([(NSArray*)display_sizes_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)display_sizes_dict) {
                    SWGHero_display_size* d = [[SWGHero_display_size  alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _display_sizes = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _display_sizes = [[NSArray alloc] init];
            }
        }
        else {
            _display_sizes = [[NSArray alloc] init];
        }
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(__id != nil)
        dict[@"id"] = __id;
    
    
    
    if(_display_sizes != nil){
        
        if([_display_sizes isKindOfClass:[NSArray class]]){
        NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGHero_display_size *display_sizes in _display_sizes) {
                [array addObject:[(SWGObject*)display_sizes asDictionary]];
            }
            dict[@"display_sizes"] = array;
        }
        
        
    }
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
