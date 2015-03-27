#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SamiExportRequest : SWGObject

@property(nonatomic) NSNumber* endDate;  
@property(nonatomic) NSString* format;  
@property(nonatomic) NSString* order;  
@property(nonatomic) NSString* sdids;  
@property(nonatomic) NSString* sdtids;  
@property(nonatomic) NSNumber* startDate;  
@property(nonatomic) NSString* trialId;  
@property(nonatomic) NSString* uids;  
- (id) endDate: (NSNumber*) endDate     
    format: (NSString*) format     
    order: (NSString*) order     
    sdids: (NSString*) sdids     
    sdtids: (NSString*) sdtids     
    startDate: (NSNumber*) startDate     
    trialId: (NSString*) trialId     
    uids: (NSString*) uids;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
