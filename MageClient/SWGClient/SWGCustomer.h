#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SWGCustomer : SWGObject

@property(nonatomic) NSString* billing_country_iso_alpha_3;  
@property(nonatomic) NSString* email_address;  
@property(nonatomic) NSNumber* marketing_email_opt_in;  
@property(nonatomic) NSString* name_first;  
@property(nonatomic) NSString* name_last;  
@property(nonatomic) NSString* name_middle;  
@property(nonatomic) NSString* password;  
@property(nonatomic) NSString* phone_number;  
@property(nonatomic) NSString* username;  
- (id) billing_country_iso_alpha_3: (NSString*) billing_country_iso_alpha_3
  
       email_address: (NSString*) email_address
  
       marketing_email_opt_in: (NSNumber*) marketing_email_opt_in
  
       name_first: (NSString*) name_first
  
       name_last: (NSString*) name_last
  
       name_middle: (NSString*) name_middle
  
       password: (NSString*) password
  
       phone_number: (NSString*) phone_number
  
       username: (NSString*) username;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
