#import "SWGDate.h"
#import "SWGProduct.h"

@implementation SWGProduct

-(id)application_website: (NSString*) application_website
    download_limit: (NSNumber*) download_limit
    download_limit_duration: (NSString*) download_limit_duration
    download_limit_reset_utc_date: (SWGDate*) download_limit_reset_utc_date
    downloads_remaining: (NSNumber*) downloads_remaining
    expiration_utc_date: (SWGDate*) expiration_utc_date
    _id: (NSNumber*) _id
    name: (NSString*) name
    status: (StatusEnum) status
    type: (TypeEnum) type { 
    
    _application_website = application_website;
    _download_limit = download_limit;
    _download_limit_duration = download_limit_duration;
    _download_limit_reset_utc_date = download_limit_reset_utc_date;
    _downloads_remaining = downloads_remaining;
    _expiration_utc_date = expiration_utc_date;
    __id = _id;
    _name = name;
    _status = status;
    _type = type;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _application_website = dict[@"application_website"];
        _download_limit = dict[@"download_limit"];
        _download_limit_duration = dict[@"download_limit_duration"];
        
        id download_limit_reset_utc_date_dict = dict[@"download_limit_reset_utc_date"];
        if(download_limit_reset_utc_date_dict != nil)
            _download_limit_reset_utc_date = [[SWGDate  alloc]initWithValues:download_limit_reset_utc_date_dict];
        
        _downloads_remaining = dict[@"downloads_remaining"];
        
        id expiration_utc_date_dict = dict[@"expiration_utc_date"];
        if(expiration_utc_date_dict != nil)
            _expiration_utc_date = [[SWGDate  alloc]initWithValues:expiration_utc_date_dict];
        
        __id = dict[@"id"];
        _name = dict[@"name"];
        _status = dict[@"status"];
        _type = dict[@"type"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_application_website != nil)
        dict[@"application_website"] = _application_website;
    
    
    
    
    if(_download_limit != nil)
        dict[@"download_limit"] = _download_limit;
    
    
    
    
    if(_download_limit_duration != nil)
        dict[@"download_limit_duration"] = _download_limit_duration;
    
    
    
    if(_download_limit_reset_utc_date != nil){
        
        
        if(_download_limit_reset_utc_date && [_download_limit_reset_utc_date isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_download_limit_reset_utc_date toString];
            if(dateString){
            dict[@"download_limit_reset_utc_date"] = dateString;
            }
        }
        else {
            if(_download_limit_reset_utc_date != nil)
            dict[@"download_limit_reset_utc_date"] = [(SWGObject*)_download_limit_reset_utc_date asDictionary];
        }
        
    }
    
    
    
    if(_downloads_remaining != nil)
        dict[@"downloads_remaining"] = _downloads_remaining;
    
    
    
    if(_expiration_utc_date != nil){
        
        
        if(_expiration_utc_date && [_expiration_utc_date isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_expiration_utc_date toString];
            if(dateString){
            dict[@"expiration_utc_date"] = dateString;
            }
        }
        else {
            if(_expiration_utc_date != nil)
            dict[@"expiration_utc_date"] = [(SWGObject*)_expiration_utc_date asDictionary];
        }
        
    }
    
    
    
    if(__id != nil)
        dict[@"id"] = __id;
    
    
    
    
    if(_name != nil)
        dict[@"name"] = _name;
    
    
    
    
    if(_status != nil)
        dict[@"status"] = _status;
    
    
    
    
    if(_type != nil)
        dict[@"type"] = _type;
    
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
