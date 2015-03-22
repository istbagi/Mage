#import "SWGDate.h"
#import "SWGDownload_size.h"

@implementation SWGDownload_size

-(id)description: (NSString*) description
    downloads: (NSArray*) downloads
    name: (NSString*) name { 
    
    __description = description;
    _downloads = downloads;
    _name = name;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        __description = dict[@"description"];
        
        id downloads_dict = dict[@"downloads"];
        if([downloads_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)downloads_dict count]];
            if([(NSArray*)downloads_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)downloads_dict) {
                    SWGDownload* d = [[SWGDownload  alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _downloads = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _downloads = [[NSArray alloc] init];
            }
        }
        else {
            _downloads = [[NSArray alloc] init];
        }
        
        _name = dict[@"name"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(__description != nil)
        dict[@"description"] = __description;
    
    
    
    if(_downloads != nil){
        
        if([_downloads isKindOfClass:[NSArray class]]){
        NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGDownload *downloads in _downloads) {
                [array addObject:[(SWGObject*)downloads asDictionary]];
            }
            dict[@"downloads"] = array;
        }
        
        
    }
    
    
    
    if(_name != nil)
        dict[@"name"] = _name;
    
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
