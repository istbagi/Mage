#import "SWGDate.h"
#import "SWGAsset_usage.h"

@implementation SWGAsset_usage

-(id)asset_id: (NSString*) asset_id
    quantity: (NSNumber*) quantity
    usage_date: (SWGDate*) usage_date { 
    
    _asset_id = asset_id;
    _quantity = quantity;
    _usage_date = usage_date;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _asset_id = dict[@"asset_id"];
        _quantity = dict[@"quantity"];
        
        id usage_date_dict = dict[@"usage_date"];
        if(usage_date_dict != nil)
            _usage_date = [[SWGDate  alloc]initWithValues:usage_date_dict];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_asset_id != nil)
        dict[@"asset_id"] = _asset_id;
    
    
    
    
    if(_quantity != nil)
        dict[@"quantity"] = _quantity;
    
    
    
    if(_usage_date != nil){
        
        
        if(_usage_date && [_usage_date isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_usage_date toString];
            if(dateString){
            dict[@"usage_date"] = dateString;
            }
        }
        else {
            if(_usage_date != nil)
            dict[@"usage_date"] = [(SWGObject*)_usage_date asDictionary];
        }
        
    }
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
