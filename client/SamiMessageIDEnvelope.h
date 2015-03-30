#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SamiMessageID.h"


@interface SamiMessageIDEnvelope : SWGObject

@property(nonatomic) SamiMessageID* data;  
- (id) data: (SamiMessageID*) data;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
