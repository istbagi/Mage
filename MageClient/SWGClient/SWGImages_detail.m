#import "SWGDate.h"
#import "SWGImages_detail.h"

@implementation SWGImages_detail

-(id)images: (NSArray*) images
    images_not_found: (NSArray*) images_not_found { 
    
    _images = images;
    _images_not_found = images_not_found;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        id images_dict = dict[@"images"];
        if([images_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)images_dict count]];
            if([(NSArray*)images_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)images_dict) {
                    SWGImage_detail* d = [[SWGImage_detail  alloc] initWithValues:dict];
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
        
        _images_not_found = dict[@"images_not_found"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    if(_images != nil){
        
        if([_images isKindOfClass:[NSArray class]]){
        NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGImage_detail *images in _images) {
                [array addObject:[(SWGObject*)images asDictionary]];
            }
            dict[@"images"] = array;
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
