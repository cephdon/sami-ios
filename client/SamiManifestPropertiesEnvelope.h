#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SamiManifestProperties.h"


@interface SamiManifestPropertiesEnvelope : SWGObject

@property(nonatomic) SamiManifestProperties* data;  
- (id) data: (SamiManifestProperties*) data;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
