#import "SWGDate.h"
#import "SWGVideo_detail.h"

@implementation SWGVideo_detail

-(id)_id: (NSString*) _id
    allowed_use: (SWGAllowed_use*) allowed_use
    artist: (NSString*) artist
    asset_family: (NSString*) asset_family
    caption: (NSString*) caption
    clip_length: (NSString*) clip_length
    collection_id: (NSNumber*) collection_id
    collection_code: (NSString*) collection_code
    collection_name: (NSString*) collection_name
    color_type: (NSString*) color_type
    copyright: (NSString*) copyright
    date_created: (SWGDate*) date_created
    display_sizes: (NSArray*) display_sizes
    download_sizes: (NSArray*) download_sizes
    era: (NSString*) era
    license_model: (NSString*) license_model
    mastered_to: (NSString*) mastered_to
    originally_shot_on: (NSString*) originally_shot_on
    product_types: (NSArray*) product_types
    shot_speed: (NSString*) shot_speed
    source: (NSString*) source
    title: (NSString*) title { 
    
    __id = _id;
    _allowed_use = allowed_use;
    _artist = artist;
    _asset_family = asset_family;
    _caption = caption;
    _clip_length = clip_length;
    _collection_id = collection_id;
    _collection_code = collection_code;
    _collection_name = collection_name;
    _color_type = color_type;
    _copyright = copyright;
    _date_created = date_created;
    _display_sizes = display_sizes;
    _download_sizes = download_sizes;
    _era = era;
    _license_model = license_model;
    _mastered_to = mastered_to;
    _originally_shot_on = originally_shot_on;
    _product_types = product_types;
    _shot_speed = shot_speed;
    _source = source;
    _title = title;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        __id = dict[@"id"];
        
        id allowed_use_dict = dict[@"allowed_use"];
        if(allowed_use_dict != nil)
            _allowed_use = [[SWGAllowed_use  alloc]initWithValues:allowed_use_dict];
        
        _artist = dict[@"artist"];
        _asset_family = dict[@"asset_family"];
        _caption = dict[@"caption"];
        _clip_length = dict[@"clip_length"];
        _collection_id = dict[@"collection_id"];
        _collection_code = dict[@"collection_code"];
        _collection_name = dict[@"collection_name"];
        _color_type = dict[@"color_type"];
        _copyright = dict[@"copyright"];
        
        id date_created_dict = dict[@"date_created"];
        if(date_created_dict != nil)
            _date_created = [[SWGDate  alloc]initWithValues:date_created_dict];
        
        
        id display_sizes_dict = dict[@"display_sizes"];
        if([display_sizes_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)display_sizes_dict count]];
            if([(NSArray*)display_sizes_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)display_sizes_dict) {
                    SWGDisplay_size* d = [[SWGDisplay_size  alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _display_sizes = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _display_sizes = [[NSArray alloc] init];
            }
        }
        else {
            _display_sizes = [[NSArray alloc] init];
        }
        
        
        id download_sizes_dict = dict[@"download_sizes"];
        if([download_sizes_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)download_sizes_dict count]];
            if([(NSArray*)download_sizes_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)download_sizes_dict) {
                    SWGDownload_size* d = [[SWGDownload_size  alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _download_sizes = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _download_sizes = [[NSArray alloc] init];
            }
        }
        else {
            _download_sizes = [[NSArray alloc] init];
        }
        
        _era = dict[@"era"];
        _license_model = dict[@"license_model"];
        _mastered_to = dict[@"mastered_to"];
        _originally_shot_on = dict[@"originally_shot_on"];
        _product_types = dict[@"product_types"];
        _shot_speed = dict[@"shot_speed"];
        _source = dict[@"source"];
        _title = dict[@"title"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(__id != nil)
        dict[@"id"] = __id;
    
    
    
    if(_allowed_use != nil){
        
        
        if(_allowed_use && [_allowed_use isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_allowed_use toString];
            if(dateString){
            dict[@"allowed_use"] = dateString;
            }
        }
        else {
            if(_allowed_use != nil)
            dict[@"allowed_use"] = [(SWGObject*)_allowed_use asDictionary];
        }
        
    }
    
    
    
    if(_artist != nil)
        dict[@"artist"] = _artist;
    
    
    
    
    if(_asset_family != nil)
        dict[@"asset_family"] = _asset_family;
    
    
    
    
    if(_caption != nil)
        dict[@"caption"] = _caption;
    
    
    
    
    if(_clip_length != nil)
        dict[@"clip_length"] = _clip_length;
    
    
    
    
    if(_collection_id != nil)
        dict[@"collection_id"] = _collection_id;
    
    
    
    
    if(_collection_code != nil)
        dict[@"collection_code"] = _collection_code;
    
    
    
    
    if(_collection_name != nil)
        dict[@"collection_name"] = _collection_name;
    
    
    
    
    if(_color_type != nil)
        dict[@"color_type"] = _color_type;
    
    
    
    
    if(_copyright != nil)
        dict[@"copyright"] = _copyright;
    
    
    
    if(_date_created != nil){
        
        
        if(_date_created && [_date_created isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_date_created toString];
            if(dateString){
            dict[@"date_created"] = dateString;
            }
        }
        else {
            if(_date_created != nil)
            dict[@"date_created"] = [(SWGObject*)_date_created asDictionary];
        }
        
    }
    
    
    if(_display_sizes != nil){
        
        if([_display_sizes isKindOfClass:[NSArray class]]){
        NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGDisplay_size *display_sizes in _display_sizes) {
                [array addObject:[(SWGObject*)display_sizes asDictionary]];
            }
            dict[@"display_sizes"] = array;
        }
        
        
    }
    
    
    if(_download_sizes != nil){
        
        if([_download_sizes isKindOfClass:[NSArray class]]){
        NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGDownload_size *download_sizes in _download_sizes) {
                [array addObject:[(SWGObject*)download_sizes asDictionary]];
            }
            dict[@"download_sizes"] = array;
        }
        
        
    }
    
    
    
    if(_era != nil)
        dict[@"era"] = _era;
    
    
    
    
    if(_license_model != nil)
        dict[@"license_model"] = _license_model;
    
    
    
    
    if(_mastered_to != nil)
        dict[@"mastered_to"] = _mastered_to;
    
    
    
    
    if(_originally_shot_on != nil)
        dict[@"originally_shot_on"] = _originally_shot_on;
    
    
    
    
    
    if(_product_types != nil) {
        if([_product_types isKindOfClass:[NSArray class]]) {
            dict[@"_product_types"] = [[NSArray alloc] initWithArray: (NSArray*) _product_types copyItems:true];
        }
        else if([_product_types isKindOfClass:[NSDictionary class]]) {
            dict[@"product_types"] = [[NSDictionary alloc] initWithDictionary:(NSDictionary*)_product_types copyItems:true];
        }
    }
    
    
    
    if(_shot_speed != nil)
        dict[@"shot_speed"] = _shot_speed;
    
    
    
    
    if(_source != nil)
        dict[@"source"] = _source;
    
    
    
    
    if(_title != nil)
        dict[@"title"] = _title;
    
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
