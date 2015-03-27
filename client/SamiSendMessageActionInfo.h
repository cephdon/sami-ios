#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SamiSendMessageActionInfo : SWGObject

@property(nonatomic) NSDictionary* data;  
@property(nonatomic) NSString* ddid;  /* Destination Device ID.  */
@property(nonatomic) NSString* sdid;  /* Source Device ID.  */
@property(nonatomic) NSNumber* ts;  /* Timestamp (past, present or future). Defaults to current time if not provided.  */
@property(nonatomic) NSString* type;  /* Type.  */
- (id) data: (NSDictionary*) data     
    ddid: (NSString*) ddid     
    sdid: (NSString*) sdid     
    ts: (NSNumber*) ts     
    type: (NSString*) type;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
