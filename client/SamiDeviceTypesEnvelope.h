#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SamiDeviceTypeArray.h"


@interface SamiDeviceTypesEnvelope : SWGObject

@property(nonatomic) NSNumber* total;  
@property(nonatomic) NSNumber* count;  
@property(nonatomic) NSNumber* offset;  
@property(nonatomic) SamiDeviceTypeArray* data;  
- (id) total: (NSNumber*) total     
    count: (NSNumber*) count     
    offset: (NSNumber*) offset     
    data: (SamiDeviceTypeArray*) data;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
