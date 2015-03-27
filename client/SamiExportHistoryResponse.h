#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SamiExportDataArray.h"


@interface SamiExportHistoryResponse : SWGObject

@property(nonatomic) NSNumber* count;  
@property(nonatomic) SamiExportDataArray* data;  
@property(nonatomic) NSNumber* offset;  
@property(nonatomic) NSNumber* total;  
- (id) count: (NSNumber*) count     
    data: (SamiExportDataArray*) data     
    offset: (NSNumber*) offset     
    total: (NSNumber*) total;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
