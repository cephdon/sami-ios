#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SamiDevice.h"


@interface SamiDeviceEnvelope : SWGObject

@property(nonatomic) SamiDevice* data;  
- (id) data: (SamiDevice*) data;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
