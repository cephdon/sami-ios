#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SamiAggregates.h"


@interface SamiAggregatesEnvelope : SWGObject

@property(nonatomic) NSString* sdid;  
@property(nonatomic) NSString* field;  
@property(nonatomic) NSNumber* startDate;  
@property(nonatomic) NSNumber* endDate;  
@property(nonatomic) NSNumber* size;  
@property(nonatomic) NSArray* data;  
- (id) sdid: (NSString*) sdid     
    field: (NSString*) field     
    startDate: (NSNumber*) startDate     
    endDate: (NSNumber*) endDate     
    size: (NSNumber*) size     
    data: (NSArray*) data;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
