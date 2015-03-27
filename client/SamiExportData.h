#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SamiExportRequest.h"


@interface SamiExportData : SWGObject

@property(nonatomic) NSNumber* expirationDate;  
@property(nonatomic) NSString* exportId;  
@property(nonatomic) NSNumber* fileSize;  
@property(nonatomic) NSString* md5;  
@property(nonatomic) SamiExportRequest* request;  
@property(nonatomic) NSString* status;  /* Export status  */
@property(nonatomic) NSNumber* totalMessages;  
- (id) expirationDate: (NSNumber*) expirationDate     
    exportId: (NSString*) exportId     
    fileSize: (NSNumber*) fileSize     
    md5: (NSString*) md5     
    request: (SamiExportRequest*) request     
    status: (NSString*) status     
    totalMessages: (NSNumber*) totalMessages;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
