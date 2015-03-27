#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SamiRawMessage : SWGObject

@property(nonatomic) NSNumber* cts;  
@property(nonatomic) NSNumber* ts;  
@property(nonatomic) NSString* mid;  
@property(nonatomic) NSString* sdid;  
@property(nonatomic) NSString* data;  
- (id) cts: (NSNumber*) cts     
    ts: (NSNumber*) ts     
    mid: (NSString*) mid     
    sdid: (NSString*) sdid     
    data: (NSString*) data;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
