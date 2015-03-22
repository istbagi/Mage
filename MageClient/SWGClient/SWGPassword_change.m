#import "SWGDate.h"
#import "SWGPassword_change.h"

@implementation SWGPassword_change

-(id)current_password: (NSString*) current_password
    password: (NSString*) password { 
    
    _current_password = current_password;
    _password = password;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _current_password = dict[@"current_password"];
        _password = dict[@"new_password"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_current_password != nil)
        dict[@"current_password"] = _current_password;
    
    
    
    
    if(_password != nil)
        dict[@"new_password"] = _password;
    
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
