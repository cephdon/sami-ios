#import <Foundation/Foundation.h>
#import "SamiExportRequestResponse.h"
#import "SamiExportRequestInfo.h"
#import "SamiExportHistoryResponse.h"
#import "SamiExportStatusResponse.h"
#import "SWGObject.h"


@interface SamiExportApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(SamiExportApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 Create Export Request
 
 Export normalized messages. The following input combinations are supported:<br/><table><tr><th>Combination</th><th>Parameters</th><th>Description</th></tr><tr><td>Get by users</td><td>uids</td><td>Search by a list of User IDs. For each user in the list, the current authenticated user must have read access over the specified user.</td></tr><tr><td>Get by devices</td><td>sdids</td><td>Search by Source Device IDs.</td></tr><tr><td>Get by device types</td><td>uids,sdtids</td><td>Search by list of Source Device Type IDs for the given list of users.</td></tr><tr><td>Get by trial</td><td>trialId</td><td>Search by Trial ID.</td></tr><tr><td>Get by combination of parameters</td><td>uids,sdids,sdtids</td><td>Search by list of Source Device IDs. Each Device ID must belong to a Source Device Type ID and a User ID.</td></tr><tr><td>Common</td><td>startDate,endDate,order,format,url,csvHeaders</td><td>Parameters that can be used with the above combinations.</td></tr></table>
 

 
 @param exportRequestInfo ExportRequest object that is passed in the body
 

 return type: SamiExportRequestResponse*
 */
-(NSNumber*) exportRequestWithCompletionBlock :(SamiExportRequestInfo*) exportRequestInfo 
    
    completionHandler: (void (^)(SamiExportRequestResponse* output, NSError* error))completionBlock;
    


/**

 Get Export History
 
 Get the history of export requests.
 

 
 @param trialId Filter by trialId.
 
 @param count Pagination count.
 
 @param offset Pagination offset.
 

 return type: SamiExportHistoryResponse*
 */
-(NSNumber*) getExportHistoryWithCompletionBlock :(NSString*) trialId 
     count:(NSNumber*) count 
     offset:(NSNumber*) offset 
    
    completionHandler: (void (^)(SamiExportHistoryResponse* output, NSError* error))completionBlock;
    


/**

 Get Export Result
 
 Retrieve result of the export query in tgz format. The tar file may contain one or more files with the results.
 

 
 @param exportId Export ID of the export query.
 

 return type: NSString*
 */
-(NSNumber*) getExportResultWithCompletionBlock :(NSString*) exportId 
    
    completionHandler: (void (^)(NSString* output, NSError* error))completionBlock;
    


/**

 Check Export Status
 
 Check status of the export query.
 

 
 @param exportId Export ID of the export query.
 

 return type: SamiExportStatusResponse*
 */
-(NSNumber*) getExportStatusWithCompletionBlock :(NSString*) exportId 
    
    completionHandler: (void (^)(SamiExportStatusResponse* output, NSError* error))completionBlock;
    



@end