#import "SWGDate.h"
#import "SWGCollections.h"

@implementation SWGCollections

-(id)collections: (NSArray*) collections { 
    
    _collections = collections;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        id collections_dict = dict[@"collections"];
        if([collections_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)collections_dict count]];
            if([(NSArray*)collections_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)collections_dict) {
                    SWGCollection* d = [[SWGCollection  alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _collections = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _collections = [[NSArray alloc] init];
            }
        }
        else {
            _collections = [[NSArray alloc] init];
        }
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    if(_collections != nil){
        
        if([_collections isKindOfClass:[NSArray class]]){
        NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGCollection *collections in _collections) {
                [array addObject:[(SWGObject*)collections asDictionary]];
            }
            dict[@"collections"] = array;
        }
        
        
    }
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
