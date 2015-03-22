#import "SWGDate.h"
#import "SWGPreviousPurchases.h"

@implementation SWGPreviousPurchases

-(id)result_count: (NSNumber*) result_count
    previous_purchases: (NSArray*) previous_purchases { 
    
    _result_count = result_count;
    _previous_purchases = previous_purchases;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _result_count = dict[@"result_count"];
        
        id previous_purchases_dict = dict[@"previous_purchases"];
        if([previous_purchases_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)previous_purchases_dict count]];
            if([(NSArray*)previous_purchases_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)previous_purchases_dict) {
                    SWGPreviousPurchase* d = [[SWGPreviousPurchase  alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _previous_purchases = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _previous_purchases = [[NSArray alloc] init];
            }
        }
        else {
            _previous_purchases = [[NSArray alloc] init];
        }
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_result_count != nil)
        dict[@"result_count"] = _result_count;
    
    
    
    if(_previous_purchases != nil){
        
        if([_previous_purchases isKindOfClass:[NSArray class]]){
        NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGPreviousPurchase *previous_purchases in _previous_purchases) {
                [array addObject:[(SWGObject*)previous_purchases asDictionary]];
            }
            dict[@"previous_purchases"] = array;
        }
        
        
    }
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
