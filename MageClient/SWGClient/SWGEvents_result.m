#import "SWGDate.h"
#import "SWGEvents_result.h"

@implementation SWGEvents_result

-(id)events: (NSArray*) events
    events_not_found: (NSArray*) events_not_found { 
    
    _events = events;
    _events_not_found = events_not_found;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        id events_dict = dict[@"events"];
        if([events_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)events_dict count]];
            if([(NSArray*)events_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)events_dict) {
                    SWGEvent* d = [[SWGEvent  alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _events = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _events = [[NSArray alloc] init];
            }
        }
        else {
            _events = [[NSArray alloc] init];
        }
        
        _events_not_found = dict[@"events_not_found"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    if(_events != nil){
        
        if([_events isKindOfClass:[NSArray class]]){
        NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGEvent *events in _events) {
                [array addObject:[(SWGObject*)events asDictionary]];
            }
            dict[@"events"] = array;
        }
        
        
    }
    
    
    
    
    if(_events_not_found != nil) {
        if([_events_not_found isKindOfClass:[NSArray class]]) {
            dict[@"_events_not_found"] = [[NSArray alloc] initWithArray: (NSArray*) _events_not_found copyItems:true];
        }
        else if([_events_not_found isKindOfClass:[NSDictionary class]]) {
            dict[@"events_not_found"] = [[NSDictionary alloc] initWithDictionary:(NSDictionary*)_events_not_found copyItems:true];
        }
    }
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
