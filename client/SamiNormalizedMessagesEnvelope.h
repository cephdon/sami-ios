#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SamiNormalizedMessage.h"


@interface SamiNormalizedMessagesEnvelope : SWGObject

@property(nonatomic) NSString* sdids;  
@property(nonatomic) NSString* sdid;  
@property(nonatomic) NSString* uid;  
@property(nonatomic) NSNumber* startDate;  
@property(nonatomic) NSNumber* endDate;  
@property(nonatomic) NSString* order;  
@property(nonatomic) NSString* next;  
@property(nonatomic) NSNumber* count;  
@property(nonatomic) NSNumber* size;  
@property(nonatomic) NSArray* data;  
- (id) sdids: (NSString*) sdids     
    sdid: (NSString*) sdid     
    uid: (NSString*) uid     
    startDate: (NSNumber*) startDate     
    endDate: (NSNumber*) endDate     
    order: (NSString*) order     
    next: (NSString*) next     
    count: (NSNumber*) count     
    size: (NSNumber*) size     
    data: (NSArray*) data;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
