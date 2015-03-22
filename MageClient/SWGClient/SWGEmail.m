#import "SWGDate.h"
#import "SWGEmail.h"

@implementation SWGEmail

-(id)email_address: (NSString*) email_address
    email_marketing_enabled: (NSNumber*) email_marketing_enabled { 
    
    _email_address = email_address;
    _email_marketing_enabled = email_marketing_enabled;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _email_address = dict[@"email_address"];
        _email_marketing_enabled = dict[@"email_marketing_enabled"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_email_address != nil)
        dict[@"email_address"] = _email_address;
    
    
    
    
    if(_email_marketing_enabled != nil)
        dict[@"email_marketing_enabled"] = _email_marketing_enabled;
    
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
