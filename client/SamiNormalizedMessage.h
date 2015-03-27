#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SamiNormalizedMessage : SWGObject

@property(nonatomic) NSNumber* cts;  
@property(nonatomic) NSNumber* ts;  
@property(nonatomic) NSString* mid;  
@property(nonatomic) NSString* sdid;  
@property(nonatomic) NSString* sdtid;  
@property(nonatomic) NSString* uid;  
@property(nonatomic) NSNumber* mv;  
@property(nonatomic) NSDictionary* data;  
- (id) cts: (NSNumber*) cts     
    ts: (NSNumber*) ts     
    mid: (NSString*) mid     
    sdid: (NSString*) sdid     
    sdtid: (NSString*) sdtid     
    uid: (NSString*) uid     
    mv: (NSNumber*) mv     
    data: (NSDictionary*) data;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
