#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SamiManifestProperties : SWGObject

@property(nonatomic) NSDictionary* properties;  
- (id) properties: (NSDictionary*) properties;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
