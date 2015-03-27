#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SamiSendMessageActionData : SWGObject

@property(nonatomic) NSString* mid;  /* Message ID.  */
- (id) mid: (NSString*) mid;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
