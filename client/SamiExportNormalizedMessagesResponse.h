#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SamiExportNormalizedMessagesResponse : SWGObject

@property(nonatomic) NSNumber* csvHeaders;  
@property(nonatomic) NSNumber* endDate;  
@property(nonatomic) NSString* exportId;  
@property(nonatomic) NSString* format;  
@property(nonatomic) NSString* order;  
@property(nonatomic) NSString* sdid;  
@property(nonatomic) NSString* sdids;  
@property(nonatomic) NSNumber* startDate;  
@property(nonatomic) NSString* stdids;  
@property(nonatomic) NSString* trialId;  
@property(nonatomic) NSString* uid;  
@property(nonatomic) NSString* uids;  
@property(nonatomic) NSString* url;  
- (id) csvHeaders: (NSNumber*) csvHeaders     
    endDate: (NSNumber*) endDate     
    exportId: (NSString*) exportId     
    format: (NSString*) format     
    order: (NSString*) order     
    sdid: (NSString*) sdid     
    sdids: (NSString*) sdids     
    startDate: (NSNumber*) startDate     
    stdids: (NSString*) stdids     
    trialId: (NSString*) trialId     
    uid: (NSString*) uid     
    uids: (NSString*) uids     
    url: (NSString*) url;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
