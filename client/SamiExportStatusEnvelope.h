#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SamiExportStatusEnvelope : SWGObject

@property(nonatomic) NSString* exportId;  
@property(nonatomic) NSString* status;  
- (id) exportId: (NSString*) exportId
  
       status: (NSString*) status;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
