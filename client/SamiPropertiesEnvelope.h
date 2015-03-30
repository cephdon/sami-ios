#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SamiAppProperties.h"


@interface SamiPropertiesEnvelope : SWGObject

@property(nonatomic) SamiAppProperties* data;  
- (id) data: (SamiAppProperties*) data;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
