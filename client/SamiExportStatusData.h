#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SamiExportStatusData : SWGObject

@property(nonatomic) NSNumber* expirationDate;  
@property(nonatomic) NSString* exportId;  
@property(nonatomic) NSString* md5;  
@property(nonatomic) NSString* status;  /* Export status  */
- (id) expirationDate: (NSNumber*) expirationDate     
    exportId: (NSString*) exportId     
    md5: (NSString*) md5     
    status: (NSString*) status;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
