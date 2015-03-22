#import "SWGDate.h"
#import "SWGKeywords.h"

@implementation SWGKeywords

-(id)keyword_id: (NSString*) keyword_id
    text: (NSString*) text
    type: (NSString*) type
    relevance: (NSNumber*) relevance { 
    
    _keyword_id = keyword_id;
    _text = text;
    _type = type;
    _relevance = relevance;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _keyword_id = dict[@"keyword_id"];
        _text = dict[@"text"];
        _type = dict[@"type"];
        _relevance = dict[@"relevance"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_keyword_id != nil)
        dict[@"keyword_id"] = _keyword_id;
    
    
    
    
    if(_text != nil)
        dict[@"text"] = _text;
    
    
    
    
    if(_type != nil)
        dict[@"type"] = _type;
    
    
    
    
    if(_relevance != nil)
        dict[@"relevance"] = _relevance;
    
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
