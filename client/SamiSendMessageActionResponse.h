#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SamiSendMessageActionData.h"


@interface SamiSendMessageActionResponse : SWGObject

@property(nonatomic) SamiSendMessageActionData* data;  
- (id) data: (SamiSendMessageActionData*) data;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
