#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SamiExportResponse : SWGObject

@property(nonatomic) NSNumber* csvHeaders;  /* Add header to csv format  */
@property(nonatomic) NSNumber* endDate;  /* Timestamp of latest message (in milliseconds since epoch).  */
@property(nonatomic) NSString* exportId;  /* Returned Export ID that should be used to check status and get the export result.  */
@property(nonatomic) NSString* format;  /* Format of the export.  */
@property(nonatomic) NSString* order;  /* Ascending or descending sort order.  */
@property(nonatomic) NSString* sdids;  /* Source Device IDs being searched for messages (Comma-separated for multiple Device IDs).  */
@property(nonatomic) NSString* sdtids;  /* Source Device Type IDs being searched for messages (Comma-separated for multiple Device Type IDs).  */
@property(nonatomic) NSNumber* startDate;  /* Timestamp of earliest message (in milliseconds since epoch).  */
@property(nonatomic) NSString* trialId;  /* Trial ID being searched for messages.  */
@property(nonatomic) NSString* uids;  /* Owner's user IDs being searched for messages (Comma-separated for multiple User IDs).  */
@property(nonatomic) NSString* url;  /* URL added to successful email message.  */
- (id) csvHeaders: (NSNumber*) csvHeaders     
    endDate: (NSNumber*) endDate     
    exportId: (NSString*) exportId     
    format: (NSString*) format     
    order: (NSString*) order     
    sdids: (NSString*) sdids     
    sdtids: (NSString*) sdtids     
    startDate: (NSNumber*) startDate     
    trialId: (NSString*) trialId     
    uids: (NSString*) uids     
    url: (NSString*) url;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
