#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SamiManifestVersions.h"


@interface SamiManifestVersionsEnvelope : SWGObject

@property(nonatomic) SamiManifestVersions* data;  
- (id) data: (SamiManifestVersions*) data;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
