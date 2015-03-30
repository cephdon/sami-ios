#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SamiDeviceType.h"


@interface SamiDeviceTypeEnvelope : SWGObject

@property(nonatomic) SamiDeviceType* data;  
- (id) data: (SamiDeviceType*) data;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
