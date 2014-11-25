#import <Foundation/Foundation.h>
#import "SamiFieldPresenceEnvelope.h"
#import "SamiExportStatusEnvelope.h"
#import "SamiAggregatesEnvelope.h"
#import "SamiMessage.h"
#import "SamiRawMessagesEnvelope.h"
#import "SamiExportEnvelope.h"
#import "SamiNormalizedMessagesEnvelope.h"
#import "SamiMessageIDEnvelope.h"


@interface SamiMessagesApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(SamiMessagesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 
 Get the messages normalized

 @param uid User ID. If not specified, assume that of the current authenticated user. If specified, it must be that of a user for which the current authenticated user has read access to.
 @param sdid Source device ID of the messages being searched.
 @param mid The SAMI message ID being searched.
 @param fieldPresence String representing a field from the specified device ID.
 @param filter Filter.
 @param offset A string that represents the starting item, should be the value of &#39;next&#39; field received in the last response. (required for pagination)
 @param count count
 @param startDate startDate
 @param endDate endDate
 @param order Desired sort order: &#39;asc&#39; or &#39;desc&#39;
 
 */
-(NSNumber*) getNormalizedMessagesWithCompletionBlock : (NSString*) uid
            sdid: (NSString*) sdid
            mid: (NSString*) mid
            fieldPresence: (NSString*) fieldPresence
            filter: (NSString*) filter
            offset: (NSString*) offset
            count: (NSNumber*) count
            startDate: (NSNumber*) startDate
            endDate: (NSNumber*) endDate
            order: (NSString*) order
    completionHandler: (void (^)(SamiNormalizedMessagesEnvelope* output, NSError* error))completionBlock;

/**

 
 Posts a message

 @param message Device Message
 
 */
-(NSNumber*) postMessageWithCompletionBlock : (SamiMessage*) message
    completionHandler: (void (^)(SamiMessageIDEnvelope* output, NSError* error))completionBlock;

/**

 
 Get aggregates on normalized messages.

 @param sdid Source device ID of the messages being searched.
 @param field String representing a field from the specified device ID.
 @param startDate startDate
 @param endDate endDate
 
 */
-(NSNumber*) getMessageAggregatesWithCompletionBlock : (NSString*) sdid
            field: (NSString*) field
            startDate: (NSNumber*) startDate
            endDate: (NSNumber*) endDate
    completionHandler: (void (^)(SamiAggregatesEnvelope* output, NSError* error))completionBlock;

/**

 
 Get the messages normalized

 @param uid User ID. If not specified, assume that of the current authenticated user. If specified, it must be that of a user for which the current authenticated user has read access to.
 @param sdid Source device ID of the messages being searched.
 @param startDate startDate
 @param endDate endDate
 @param order Desired sort order: &#39;asc&#39; or &#39;desc&#39;
 @param format Format the export will be returned as.
 
 */
-(NSNumber*) exportNormalizedMessagesWithCompletionBlock : (NSString*) uid
            sdid: (NSString*) sdid
            startDate: (NSNumber*) startDate
            endDate: (NSNumber*) endDate
            order: (NSString*) order
            format: (NSString*) format
    completionHandler: (void (^)(SamiExportEnvelope* output, NSError* error))completionBlock;

/**

 
 Check status of the export query.

 @param exportId The Export ID of the export query.
 
 */
-(NSNumber*) checkExportStatusWithCompletionBlock : (NSString*) exportId
    completionHandler: (void (^)(SamiExportStatusEnvelope* output, NSError* error))completionBlock;

/**

 
 Get last messages normalized.

 @param count Number of items to return per query.
 @param sdids Comma separated list of source device IDs (minimum: 1).
 @param field String representing a field from the specified device ID.
 
 */
-(NSNumber*) getLastNormalizedMessagesWithCompletionBlock : (NSNumber*) count
            sdids: (NSString*) sdids
            field: (NSString*) field
    completionHandler: (void (^)(SamiNormalizedMessagesEnvelope* output, NSError* error))completionBlock;

/**

 
 Get normalized message presence.

 @param sdid Source device ID of the messages being searched.
 @param fieldPresence String representing a field from the specified device ID.
 @param startDate startDate
 @param endDate endDate
 @param interval String representing grouping interval. One of: &#39;minute&#39; (1 hour limit), &#39;hour&#39; (1 day limit), &#39;day&#39; (31 days limit), &#39;month&#39; (1 year limit), or &#39;year&#39; (10 years limit).
 
 */
-(NSNumber*) getFieldPresenceWithCompletionBlock : (NSString*) sdid
            fieldPresence: (NSString*) fieldPresence
            startDate: (NSNumber*) startDate
            endDate: (NSNumber*) endDate
            interval: (NSString*) interval
    completionHandler: (void (^)(SamiFieldPresenceEnvelope* output, NSError* error))completionBlock;

/**

 
 Get Raw messages

 @param sdid Source device ID of the messages being searched.
 @param offset A string that represents the starting item, should be the value of &#39;next&#39; field received in the last response. (required for pagination)
 @param count count
 @param startDate startDate
 @param endDate endDate
 @param order Desired sort order: &#39;asc&#39; or &#39;desc&#39;
 
 */
-(NSNumber*) getRawMessagesWithCompletionBlock : (NSString*) sdid
            offset: (NSString*) offset
            count: (NSNumber*) count
            startDate: (NSNumber*) startDate
            endDate: (NSNumber*) endDate
            order: (NSString*) order
    completionHandler: (void (^)(SamiRawMessagesEnvelope* output, NSError* error))completionBlock;

@end