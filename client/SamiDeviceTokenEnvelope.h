#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SamiDeviceToken.h"


@interface SamiDeviceTokenEnvelope : SWGObject

@property(nonatomic) SamiDeviceToken* data;  
- (id) data: (SamiDeviceToken*) data;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
