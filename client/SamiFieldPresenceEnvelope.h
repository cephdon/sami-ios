#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SamiFieldPresence.h"


@interface SamiFieldPresenceEnvelope : SWGObject

@property(nonatomic) NSString* sdid;  
@property(nonatomic) NSString* fieldPresence;  
@property(nonatomic) NSNumber* startDate;  
@property(nonatomic) NSNumber* endDate;  
@property(nonatomic) NSString* interval;  
@property(nonatomic) NSNumber* size;  
@property(nonatomic) NSArray* data;  
- (id) sdid: (NSString*) sdid     
    fieldPresence: (NSString*) fieldPresence     
    startDate: (NSNumber*) startDate     
    endDate: (NSNumber*) endDate     
    interval: (NSString*) interval     
    size: (NSNumber*) size     
    data: (NSArray*) data;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
