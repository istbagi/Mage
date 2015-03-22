#import "SWGDate.h"
#import "SWGEvent.h"

@implementation SWGEvent

-(id)_id: (NSNumber*) _id
    child_event_count: (NSNumber*) child_event_count
    editorial_segments: (NSArray*) editorial_segments
    hero_image: (SWGHero_image*) hero_image
    image_count: (NSNumber*) image_count
    location: (SWGLocation*) location
    name: (NSString*) name
    start_date: (SWGDate*) start_date { 
    
    __id = _id;
    _child_event_count = child_event_count;
    _editorial_segments = editorial_segments;
    _hero_image = hero_image;
    _image_count = image_count;
    _location = location;
    _name = name;
    _start_date = start_date;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        __id = dict[@"id"];
        _child_event_count = dict[@"child_event_count"];
        _editorial_segments = dict[@"editorial_segments"];
        
        id hero_image_dict = dict[@"hero_image"];
        if(hero_image_dict != nil)
            _hero_image = [[SWGHero_image  alloc]initWithValues:hero_image_dict];
        
        _image_count = dict[@"image_count"];
        
        id location_dict = dict[@"location"];
        if(location_dict != nil)
            _location = [[SWGLocation  alloc]initWithValues:location_dict];
        
        _name = dict[@"name"];
        
        id start_date_dict = dict[@"start_date"];
        if(start_date_dict != nil)
            _start_date = [[SWGDate  alloc]initWithValues:start_date_dict];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(__id != nil)
        dict[@"id"] = __id;
    
    
    
    
    if(_child_event_count != nil)
        dict[@"child_event_count"] = _child_event_count;
    
    
    
    
    
    if(_editorial_segments != nil) {
        if([_editorial_segments isKindOfClass:[NSArray class]]) {
            dict[@"_editorial_segments"] = [[NSArray alloc] initWithArray: (NSArray*) _editorial_segments copyItems:true];
        }
        else if([_editorial_segments isKindOfClass:[NSDictionary class]]) {
            dict[@"editorial_segments"] = [[NSDictionary alloc] initWithDictionary:(NSDictionary*)_editorial_segments copyItems:true];
        }
    }
    
    
    if(_hero_image != nil){
        
        
        if(_hero_image && [_hero_image isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_hero_image toString];
            if(dateString){
            dict[@"hero_image"] = dateString;
            }
        }
        else {
            if(_hero_image != nil)
            dict[@"hero_image"] = [(SWGObject*)_hero_image asDictionary];
        }
        
    }
    
    
    
    if(_image_count != nil)
        dict[@"image_count"] = _image_count;
    
    
    
    if(_location != nil){
        
        
        if(_location && [_location isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_location toString];
            if(dateString){
            dict[@"location"] = dateString;
            }
        }
        else {
            if(_location != nil)
            dict[@"location"] = [(SWGObject*)_location asDictionary];
        }
        
    }
    
    
    
    if(_name != nil)
        dict[@"name"] = _name;
    
    
    
    if(_start_date != nil){
        
        
        if(_start_date && [_start_date isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_start_date toString];
            if(dateString){
            dict[@"start_date"] = dateString;
            }
        }
        else {
            if(_start_date != nil)
            dict[@"start_date"] = [(SWGObject*)_start_date asDictionary];
        }
        
    }
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
