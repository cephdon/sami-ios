#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SamiDeviceToken : SWGObject

@property(nonatomic) NSString* accessToken;  
@property(nonatomic) NSString* uid;  
@property(nonatomic) NSString* did;  
@property(nonatomic) NSString* cid;  
- (id) accessToken: (NSString*) accessToken     
    uid: (NSString*) uid     
    did: (NSString*) did     
    cid: (NSString*) cid;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
