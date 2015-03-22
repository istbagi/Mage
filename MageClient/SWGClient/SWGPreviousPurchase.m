#import "SWGDate.h"
#import "SWGPreviousPurchase.h"

@implementation SWGPreviousPurchase

-(id)date_purchased: (SWGDate*) date_purchased
    image_id: (NSString*) image_id
    license_model: (NSString*) license_model
    order_id: (NSString*) order_id
    thumb_uri: (NSString*) thumb_uri { 
    
    _date_purchased = date_purchased;
    _image_id = image_id;
    _license_model = license_model;
    _order_id = order_id;
    _thumb_uri = thumb_uri;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        id date_purchased_dict = dict[@"date_purchased"];
        if(date_purchased_dict != nil)
            _date_purchased = [[SWGDate  alloc]initWithValues:date_purchased_dict];
        
        _image_id = dict[@"image_id"];
        _license_model = dict[@"license_model"];
        _order_id = dict[@"order_id"];
        _thumb_uri = dict[@"thumb_uri"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    if(_date_purchased != nil){
        
        
        if(_date_purchased && [_date_purchased isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_date_purchased toString];
            if(dateString){
            dict[@"date_purchased"] = dateString;
            }
        }
        else {
            if(_date_purchased != nil)
            dict[@"date_purchased"] = [(SWGObject*)_date_purchased asDictionary];
        }
        
    }
    
    
    
    if(_image_id != nil)
        dict[@"image_id"] = _image_id;
    
    
    
    
    if(_license_model != nil)
        dict[@"license_model"] = _license_model;
    
    
    
    
    if(_order_id != nil)
        dict[@"order_id"] = _order_id;
    
    
    
    
    if(_thumb_uri != nil)
        dict[@"thumb_uri"] = _thumb_uri;
    
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
