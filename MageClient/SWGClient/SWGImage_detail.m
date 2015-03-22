#import "SWGDate.h"
#import "SWGImage_detail.h"

@implementation SWGImage_detail

-(id)allowed_use: (SWGAllowed_use*) allowed_use
    artist: (NSString*) artist
    artist_title: (NSString*) artist_title
    asset_family: (NSString*) asset_family
    call_for_image: (NSNumber*) call_for_image
    caption: (NSString*) caption
    city: (NSString*) city
    collection_code: (NSString*) collection_code
    collection_id: (NSNumber*) collection_id
    collection_name: (NSString*) collection_name
    color_type: (NSString*) color_type
    copyright: (NSString*) copyright
    country: (NSString*) country
    credit_line: (NSString*) credit_line
    date_created: (SWGDate*) date_created
    date_submitted: (SWGDate*) date_submitted
    display_sizes: (NSArray*) display_sizes
    download_sizes: (NSArray*) download_sizes
    editorial_segments: (NSArray*) editorial_segments
    editorial_source_name: (NSString*) editorial_source_name
    event_ids: (NSArray*) event_ids
    graphical_style: (NSString*) graphical_style
    _id: (NSString*) _id
    keywords: (NSArray*) keywords
    largest_downloads: (NSArray*) largest_downloads
    license_model: (NSString*) license_model
    links: (NSArray*) links
    max_dimensions: (SWGMax_dimensions*) max_dimensions
    orientation: (NSString*) orientation
    people: (NSArray*) people
    prestige: (NSNumber*) prestige
    product_types: (NSArray*) product_types
    quality_rank: (NSNumber*) quality_rank
    referral_destinations: (NSArray*) referral_destinations
    state_province: (NSString*) state_province
    title: (NSString*) title
    uri_oembed: (NSString*) uri_oembed { 
    
    _allowed_use = allowed_use;
    _artist = artist;
    _artist_title = artist_title;
    _asset_family = asset_family;
    _call_for_image = call_for_image;
    _caption = caption;
    _city = city;
    _collection_code = collection_code;
    _collection_id = collection_id;
    _collection_name = collection_name;
    _color_type = color_type;
    _copyright = copyright;
    _country = country;
    _credit_line = credit_line;
    _date_created = date_created;
    _date_submitted = date_submitted;
    _display_sizes = display_sizes;
    _download_sizes = download_sizes;
    _editorial_segments = editorial_segments;
    _editorial_source_name = editorial_source_name;
    _event_ids = event_ids;
    _graphical_style = graphical_style;
    __id = _id;
    _keywords = keywords;
    _largest_downloads = largest_downloads;
    _license_model = license_model;
    _links = links;
    _max_dimensions = max_dimensions;
    _orientation = orientation;
    _people = people;
    _prestige = prestige;
    _product_types = product_types;
    _quality_rank = quality_rank;
    _referral_destinations = referral_destinations;
    _state_province = state_province;
    _title = title;
    _uri_oembed = uri_oembed;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        id allowed_use_dict = dict[@"allowed_use"];
        if(allowed_use_dict != nil)
            _allowed_use = [[SWGAllowed_use  alloc]initWithValues:allowed_use_dict];
        
        _artist = dict[@"artist"];
        _artist_title = dict[@"artist_title"];
        _asset_family = dict[@"asset_family"];
        _call_for_image = dict[@"call_for_image"];
        _caption = dict[@"caption"];
        _city = dict[@"city"];
        _collection_code = dict[@"collection_code"];
        _collection_id = dict[@"collection_id"];
        _collection_name = dict[@"collection_name"];
        _color_type = dict[@"color_type"];
        _copyright = dict[@"copyright"];
        _country = dict[@"country"];
        _credit_line = dict[@"credit_line"];
        
        id date_created_dict = dict[@"date_created"];
        if(date_created_dict != nil)
            _date_created = [[SWGDate  alloc]initWithValues:date_created_dict];
        
        
        id date_submitted_dict = dict[@"date_submitted"];
        if(date_submitted_dict != nil)
            _date_submitted = [[SWGDate  alloc]initWithValues:date_submitted_dict];
        
        
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
        
        _editorial_segments = dict[@"editorial_segments"];
        _editorial_source_name = dict[@"editorial_source_name"];
        _event_ids = dict[@"event_ids"];
        _graphical_style = dict[@"graphical_style"];
        __id = dict[@"id"];
        
        id keywords_dict = dict[@"keywords"];
        if([keywords_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)keywords_dict count]];
            if([(NSArray*)keywords_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)keywords_dict) {
                    SWGKeywords* d = [[SWGKeywords  alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _keywords = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _keywords = [[NSArray alloc] init];
            }
        }
        else {
            _keywords = [[NSArray alloc] init];
        }
        
        
        id largest_downloads_dict = dict[@"largest_downloads"];
        if([largest_downloads_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)largest_downloads_dict count]];
            if([(NSArray*)largest_downloads_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)largest_downloads_dict) {
                    SWGDownload_size* d = [[SWGDownload_size  alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _largest_downloads = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _largest_downloads = [[NSArray alloc] init];
            }
        }
        else {
            _largest_downloads = [[NSArray alloc] init];
        }
        
        _license_model = dict[@"license_model"];
        
        id links_dict = dict[@"links"];
        if([links_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)links_dict count]];
            if([(NSArray*)links_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)links_dict) {
                    SWGLink* d = [[SWGLink  alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _links = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _links = [[NSArray alloc] init];
            }
        }
        else {
            _links = [[NSArray alloc] init];
        }
        
        
        id max_dimensions_dict = dict[@"max_dimensions"];
        if(max_dimensions_dict != nil)
            _max_dimensions = [[SWGMax_dimensions  alloc]initWithValues:max_dimensions_dict];
        
        _orientation = dict[@"orientation"];
        _people = dict[@"people"];
        _prestige = dict[@"prestige"];
        _product_types = dict[@"product_types"];
        _quality_rank = dict[@"quality_rank"];
        
        id referral_destinations_dict = dict[@"referral_destinations"];
        if([referral_destinations_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)referral_destinations_dict count]];
            if([(NSArray*)referral_destinations_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)referral_destinations_dict) {
                    SWGReferral_destination* d = [[SWGReferral_destination  alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _referral_destinations = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _referral_destinations = [[NSArray alloc] init];
            }
        }
        else {
            _referral_destinations = [[NSArray alloc] init];
        }
        
        _state_province = dict[@"state_province"];
        _title = dict[@"title"];
        _uri_oembed = dict[@"uri_oembed"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
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
    
    
    
    
    if(_artist_title != nil)
        dict[@"artist_title"] = _artist_title;
    
    
    
    
    if(_asset_family != nil)
        dict[@"asset_family"] = _asset_family;
    
    
    
    
    if(_call_for_image != nil)
        dict[@"call_for_image"] = _call_for_image;
    
    
    
    
    if(_caption != nil)
        dict[@"caption"] = _caption;
    
    
    
    
    if(_city != nil)
        dict[@"city"] = _city;
    
    
    
    
    if(_collection_code != nil)
        dict[@"collection_code"] = _collection_code;
    
    
    
    
    if(_collection_id != nil)
        dict[@"collection_id"] = _collection_id;
    
    
    
    
    if(_collection_name != nil)
        dict[@"collection_name"] = _collection_name;
    
    
    
    
    if(_color_type != nil)
        dict[@"color_type"] = _color_type;
    
    
    
    
    if(_copyright != nil)
        dict[@"copyright"] = _copyright;
    
    
    
    
    if(_country != nil)
        dict[@"country"] = _country;
    
    
    
    
    if(_credit_line != nil)
        dict[@"credit_line"] = _credit_line;
    
    
    
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
    
    
    if(_date_submitted != nil){
        
        
        if(_date_submitted && [_date_submitted isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_date_submitted toString];
            if(dateString){
            dict[@"date_submitted"] = dateString;
            }
        }
        else {
            if(_date_submitted != nil)
            dict[@"date_submitted"] = [(SWGObject*)_date_submitted asDictionary];
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
    
    
    
    
    if(_editorial_segments != nil) {
        if([_editorial_segments isKindOfClass:[NSArray class]]) {
            dict[@"_editorial_segments"] = [[NSArray alloc] initWithArray: (NSArray*) _editorial_segments copyItems:true];
        }
        else if([_editorial_segments isKindOfClass:[NSDictionary class]]) {
            dict[@"editorial_segments"] = [[NSDictionary alloc] initWithDictionary:(NSDictionary*)_editorial_segments copyItems:true];
        }
    }
    
    
    
    if(_editorial_source_name != nil)
        dict[@"editorial_source_name"] = _editorial_source_name;
    
    
    
    
    
    if(_event_ids != nil) {
        if([_event_ids isKindOfClass:[NSArray class]]) {
            dict[@"_event_ids"] = [[NSArray alloc] initWithArray: (NSArray*) _event_ids copyItems:true];
        }
        else if([_event_ids isKindOfClass:[NSDictionary class]]) {
            dict[@"event_ids"] = [[NSDictionary alloc] initWithDictionary:(NSDictionary*)_event_ids copyItems:true];
        }
    }
    
    
    
    if(_graphical_style != nil)
        dict[@"graphical_style"] = _graphical_style;
    
    
    
    
    if(__id != nil)
        dict[@"id"] = __id;
    
    
    
    if(_keywords != nil){
        
        if([_keywords isKindOfClass:[NSArray class]]){
        NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGKeywords *keywords in _keywords) {
                [array addObject:[(SWGObject*)keywords asDictionary]];
            }
            dict[@"keywords"] = array;
        }
        
        
    }
    
    
    if(_largest_downloads != nil){
        
        if([_largest_downloads isKindOfClass:[NSArray class]]){
        NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGDownload_size *largest_downloads in _largest_downloads) {
                [array addObject:[(SWGObject*)largest_downloads asDictionary]];
            }
            dict[@"largest_downloads"] = array;
        }
        
        
    }
    
    
    
    if(_license_model != nil)
        dict[@"license_model"] = _license_model;
    
    
    
    if(_links != nil){
        
        if([_links isKindOfClass:[NSArray class]]){
        NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGLink *links in _links) {
                [array addObject:[(SWGObject*)links asDictionary]];
            }
            dict[@"links"] = array;
        }
        
        
    }
    
    
    if(_max_dimensions != nil){
        
        
        if(_max_dimensions && [_max_dimensions isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_max_dimensions toString];
            if(dateString){
            dict[@"max_dimensions"] = dateString;
            }
        }
        else {
            if(_max_dimensions != nil)
            dict[@"max_dimensions"] = [(SWGObject*)_max_dimensions asDictionary];
        }
        
    }
    
    
    
    if(_orientation != nil)
        dict[@"orientation"] = _orientation;
    
    
    
    
    
    if(_people != nil) {
        if([_people isKindOfClass:[NSArray class]]) {
            dict[@"_people"] = [[NSArray alloc] initWithArray: (NSArray*) _people copyItems:true];
        }
        else if([_people isKindOfClass:[NSDictionary class]]) {
            dict[@"people"] = [[NSDictionary alloc] initWithDictionary:(NSDictionary*)_people copyItems:true];
        }
    }
    
    
    
    if(_prestige != nil)
        dict[@"prestige"] = _prestige;
    
    
    
    
    
    if(_product_types != nil) {
        if([_product_types isKindOfClass:[NSArray class]]) {
            dict[@"_product_types"] = [[NSArray alloc] initWithArray: (NSArray*) _product_types copyItems:true];
        }
        else if([_product_types isKindOfClass:[NSDictionary class]]) {
            dict[@"product_types"] = [[NSDictionary alloc] initWithDictionary:(NSDictionary*)_product_types copyItems:true];
        }
    }
    
    
    
    if(_quality_rank != nil)
        dict[@"quality_rank"] = _quality_rank;
    
    
    
    if(_referral_destinations != nil){
        
        if([_referral_destinations isKindOfClass:[NSArray class]]){
        NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGReferral_destination *referral_destinations in _referral_destinations) {
                [array addObject:[(SWGObject*)referral_destinations asDictionary]];
            }
            dict[@"referral_destinations"] = array;
        }
        
        
    }
    
    
    
    if(_state_province != nil)
        dict[@"state_province"] = _state_province;
    
    
    
    
    if(_title != nil)
        dict[@"title"] = _title;
    
    
    
    
    if(_uri_oembed != nil)
        dict[@"uri_oembed"] = _uri_oembed;
    
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
