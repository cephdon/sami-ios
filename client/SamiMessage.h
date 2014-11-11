#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SamiMessage : SWGObject

@property(nonatomic) NSString* sdid;  
@property(nonatomic) NSString* ddid;  
@property(nonatomic) NSNumber* ts;  
@property(nonatomic) NSString* token;  
@property(nonatomic) NSDictionary* data;  
- (id) sdid: (NSString*) sdid
  
       ddid: (NSString*) ddid
  
       ts: (NSNumber*) ts
  
       token: (NSString*) token
  
       data: (NSDictionary*) data;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
