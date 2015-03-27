#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SamiDeviceArray.h"


@interface SamiDevicesEnvelope : SWGObject

@property(nonatomic) NSNumber* total;  
@property(nonatomic) NSNumber* count;  
@property(nonatomic) NSNumber* offset;  
@property(nonatomic) SamiDeviceArray* data;  
- (id) total: (NSNumber*) total     
    count: (NSNumber*) count     
    offset: (NSNumber*) offset     
    data: (SamiDeviceArray*) data;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
