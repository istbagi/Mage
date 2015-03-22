#import "SWGDate.h"
#import "SWGDownloads_response.h"

@implementation SWGDownloads_response

-(id)result_count: (NSNumber*) result_count
    downloads: (NSArray*) downloads { 
    
    _result_count = result_count;
    _downloads = downloads;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _result_count = dict[@"result_count"];
        
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
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_result_count != nil)
        dict[@"result_count"] = _result_count;
    
    
    
    if(_downloads != nil){
        
        if([_downloads isKindOfClass:[NSArray class]]){
        NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGDownload *downloads in _downloads) {
                [array addObject:[(SWGObject*)downloads asDictionary]];
            }
            dict[@"downloads"] = array;
        }
        
        
    }
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
