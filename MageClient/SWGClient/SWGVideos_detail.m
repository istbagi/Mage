#import "SWGDate.h"
#import "SWGVideos_detail.h"

@implementation SWGVideos_detail

-(id)Videos: (NSArray*) Videos
    images_not_found: (NSArray*) images_not_found { 
    
    _Videos = Videos;
    _images_not_found = images_not_found;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        id Videos_dict = dict[@"Videos"];
        if([Videos_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)Videos_dict count]];
            if([(NSArray*)Videos_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)Videos_dict) {
                    SWGVideo_detail* d = [[SWGVideo_detail  alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _Videos = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _Videos = [[NSArray alloc] init];
            }
        }
        else {
            _Videos = [[NSArray alloc] init];
        }
        
        _images_not_found = dict[@"images_not_found"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    if(_Videos != nil){
        
        if([_Videos isKindOfClass:[NSArray class]]){
        NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGVideo_detail *Videos in _Videos) {
                [array addObject:[(SWGObject*)Videos asDictionary]];
            }
            dict[@"Videos"] = array;
        }
        
        
    }
    
    
    
    
    if(_images_not_found != nil) {
        if([_images_not_found isKindOfClass:[NSArray class]]) {
            dict[@"_images_not_found"] = [[NSArray alloc] initWithArray: (NSArray*) _images_not_found copyItems:true];
        }
        else if([_images_not_found isKindOfClass:[NSDictionary class]]) {
            dict[@"images_not_found"] = [[NSDictionary alloc] initWithDictionary:(NSDictionary*)_images_not_found copyItems:true];
        }
    }
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
