#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SamiExportStatusResponse : SWGObject

@property(nonatomic) NSNumber* expirationDate;  
@property(nonatomic) NSString* exportId;  
@property(nonatomic) NSString* md5;  
@property(nonatomic) NSString* status;  /* Export status  */
@property(nonatomic) NSString* ttl;  
- (id) expirationDate: (NSNumber*) expirationDate     
    exportId: (NSString*) exportId     
    md5: (NSString*) md5     
    status: (NSString*) status     
    ttl: (NSString*) ttl;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
