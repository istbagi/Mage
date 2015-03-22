#import "SWGDate.h"
#import "SWGVideo_search_results.h"

@implementation SWGVideo_search_results

-(id)result_count: (NSNumber*) result_count
    videos: (NSArray*) videos { 
    
    _result_count = result_count;
    _videos = videos;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _result_count = dict[@"result_count"];
        
        id videos_dict = dict[@"videos"];
        if([videos_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)videos_dict count]];
            if([(NSArray*)videos_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)videos_dict) {
                    SWGVideo_search_item* d = [[SWGVideo_search_item  alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _videos = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _videos = [[NSArray alloc] init];
            }
        }
        else {
            _videos = [[NSArray alloc] init];
        }
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_result_count != nil)
        dict[@"result_count"] = _result_count;
    
    
    
    if(_videos != nil){
        
        if([_videos isKindOfClass:[NSArray class]]){
        NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGVideo_search_item *videos in _videos) {
                [array addObject:[(SWGObject*)videos asDictionary]];
            }
            dict[@"videos"] = array;
        }
        
        
    }
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
