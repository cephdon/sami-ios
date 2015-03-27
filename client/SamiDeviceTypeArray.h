#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SamiDeviceType.h"


@interface SamiDeviceTypeArray : SWGObject

@property(nonatomic) NSArray* deviceTypes;  
- (id) deviceTypes: (NSArray*) deviceTypes;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
