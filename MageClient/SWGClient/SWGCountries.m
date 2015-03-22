#import "SWGDate.h"
#import "SWGCountries.h"

@implementation SWGCountries

-(id)countries: (NSArray*) countries { 
    
    _countries = countries;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        id countries_dict = dict[@"countries"];
        if([countries_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)countries_dict count]];
            if([(NSArray*)countries_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)countries_dict) {
                    SWGCountry* d = [[SWGCountry  alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _countries = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _countries = [[NSArray alloc] init];
            }
        }
        else {
            _countries = [[NSArray alloc] init];
        }
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    if(_countries != nil){
        
        if([_countries isKindOfClass:[NSArray class]]){
        NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGCountry *countries in _countries) {
                [array addObject:[(SWGObject*)countries asDictionary]];
            }
            dict[@"countries"] = array;
        }
        
        
    }
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
