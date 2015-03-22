#import "SWGDate.h"
#import "SWGDownload.h"

@implementation SWGDownload

-(id)date_downloaded: (SWGDate*) date_downloaded
    _id: (NSString*) _id
    product_type: (NSString*) product_type
    thumb_uri: (NSString*) thumb_uri { 
    
    _date_downloaded = date_downloaded;
    __id = _id;
    _product_type = product_type;
    _thumb_uri = thumb_uri;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        id date_downloaded_dict = dict[@"date_downloaded"];
        if(date_downloaded_dict != nil)
            _date_downloaded = [[SWGDate  alloc]initWithValues:date_downloaded_dict];
        
        __id = dict[@"id"];
        _product_type = dict[@"product_type"];
        _thumb_uri = dict[@"thumb_uri"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    if(_date_downloaded != nil){
        
        
        if(_date_downloaded && [_date_downloaded isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_date_downloaded toString];
            if(dateString){
            dict[@"date_downloaded"] = dateString;
            }
        }
        else {
            if(_date_downloaded != nil)
            dict[@"date_downloaded"] = [(SWGObject*)_date_downloaded asDictionary];
        }
        
    }
    
    
    
    if(__id != nil)
        dict[@"id"] = __id;
    
    
    
    
    if(_product_type != nil)
        dict[@"product_type"] = _product_type;
    
    
    
    
    if(_thumb_uri != nil)
        dict[@"thumb_uri"] = _thumb_uri;
    
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
