#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SamiUser.h"


@interface SamiUserEnvelope : SWGObject

@property(nonatomic) SamiUser* data;  
- (id) data: (SamiUser*) data;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
