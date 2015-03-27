#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SamiManifestVersions : SWGObject

@property(nonatomic) NSArray* versions;  
- (id) versions: (NSArray*) versions;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
