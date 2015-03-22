#import "SWGDate.h"
#import "SWGCreative_image_search_results.h"

@implementation SWGCreative_image_search_results

-(id)result_count: (NSNumber*) result_count
    images: (NSArray*) images { 
    
    _result_count = result_count;
    _images = images;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _result_count = dict[@"result_count"];
        
        id images_dict = dict[@"images"];
        if([images_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)images_dict count]];
            if([(NSArray*)images_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)images_dict) {
                    SWGCreative_image_search_item* d = [[SWGCreative_image_search_item  alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _images = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _images = [[NSArray alloc] init];
            }
        }
        else {
            _images = [[NSArray alloc] init];
        }
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_result_count != nil)
        dict[@"result_count"] = _result_count;
    
    
    
    if(_images != nil){
        
        if([_images isKindOfClass:[NSArray class]]){
        NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGCreative_image_search_item *images in _images) {
                [array addObject:[(SWGObject*)images asDictionary]];
            }
            dict[@"images"] = array;
        }
        
        
    }
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
