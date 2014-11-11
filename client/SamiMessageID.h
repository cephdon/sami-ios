#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SamiMessageID : SWGObject

@property(nonatomic) NSString* mid;  
- (id) mid: (NSString*) mid;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
