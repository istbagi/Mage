#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"


@interface SWGProduct : SWGObject

@property(nonatomic) NSString* application_website;  
@property(nonatomic) NSNumber* download_limit;  
@property(nonatomic) NSString* download_limit_duration;  
@property(nonatomic) SWGDate* download_limit_reset_utc_date;  
@property(nonatomic) NSNumber* downloads_remaining;  
@property(nonatomic) SWGDate* expiration_utc_date;  
@property(nonatomic) NSNumber* _id;  
@property(nonatomic) NSString* name;  
@property(nonatomic) StatusEnum status;  
@property(nonatomic) TypeEnum type;  
- (id) application_website: (NSString*) application_website
  
       download_limit: (NSNumber*) download_limit
  
       download_limit_duration: (NSString*) download_limit_duration
  
       download_limit_reset_utc_date: (SWGDate*) download_limit_reset_utc_date
  
       downloads_remaining: (NSNumber*) downloads_remaining
  
       expiration_utc_date: (SWGDate*) expiration_utc_date
  
       _id: (NSNumber*) _id
  
       name: (NSString*) name
  
       status: (StatusEnum) status
  
       type: (TypeEnum) type;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
