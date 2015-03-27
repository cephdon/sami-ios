#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SamiRawMessage.h"


@interface SamiRawMessagesEnvelope : SWGObject

@property(nonatomic) NSString* sdid;  
@property(nonatomic) NSString* mid;  
@property(nonatomic) NSNumber* startDate;  
@property(nonatomic) NSNumber* endDate;  
@property(nonatomic) NSNumber* count;  
@property(nonatomic) NSString* order;  
@property(nonatomic) NSNumber* size;  
@property(nonatomic) NSArray* data;  
- (id) sdid: (NSString*) sdid     
    mid: (NSString*) mid     
    startDate: (NSNumber*) startDate     
    endDate: (NSNumber*) endDate     
    count: (NSNumber*) count     
    order: (NSString*) order     
    size: (NSNumber*) size     
    data: (NSArray*) data;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
