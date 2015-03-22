#import "SWGDate.h"
#import "SWGCustomer.h"

@implementation SWGCustomer

-(id)billing_country_iso_alpha_3: (NSString*) billing_country_iso_alpha_3
    email_address: (NSString*) email_address
    marketing_email_opt_in: (NSNumber*) marketing_email_opt_in
    name_first: (NSString*) name_first
    name_last: (NSString*) name_last
    name_middle: (NSString*) name_middle
    password: (NSString*) password
    phone_number: (NSString*) phone_number
    username: (NSString*) username { 
    
    _billing_country_iso_alpha_3 = billing_country_iso_alpha_3;
    _email_address = email_address;
    _marketing_email_opt_in = marketing_email_opt_in;
    _name_first = name_first;
    _name_last = name_last;
    _name_middle = name_middle;
    _password = password;
    _phone_number = phone_number;
    _username = username;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _billing_country_iso_alpha_3 = dict[@"billing_country_iso_alpha_3"];
        _email_address = dict[@"email_address"];
        _marketing_email_opt_in = dict[@"marketing_email_opt_in"];
        _name_first = dict[@"name_first"];
        _name_last = dict[@"name_last"];
        _name_middle = dict[@"name_middle"];
        _password = dict[@"password"];
        _phone_number = dict[@"phone_number"];
        _username = dict[@"username"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_billing_country_iso_alpha_3 != nil)
        dict[@"billing_country_iso_alpha_3"] = _billing_country_iso_alpha_3;
    
    
    
    
    if(_email_address != nil)
        dict[@"email_address"] = _email_address;
    
    
    
    
    if(_marketing_email_opt_in != nil)
        dict[@"marketing_email_opt_in"] = _marketing_email_opt_in;
    
    
    
    
    if(_name_first != nil)
        dict[@"name_first"] = _name_first;
    
    
    
    
    if(_name_last != nil)
        dict[@"name_last"] = _name_last;
    
    
    
    
    if(_name_middle != nil)
        dict[@"name_middle"] = _name_middle;
    
    
    
    
    if(_password != nil)
        dict[@"password"] = _password;
    
    
    
    
    if(_phone_number != nil)
        dict[@"phone_number"] = _phone_number;
    
    
    
    
    if(_username != nil)
        dict[@"username"] = _username;
    
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
