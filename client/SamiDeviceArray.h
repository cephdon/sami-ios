#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SamiDevice.h"


@interface SamiDeviceArray : SWGObject

@property(nonatomic) NSArray* devices;  
- (id) devices: (NSArray*) devices;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
