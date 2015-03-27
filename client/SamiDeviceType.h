#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SamiDeviceType : SWGObject

@property(nonatomic) NSNumber* approved;  /* Approval status.  */
@property(nonatomic) NSString* _id;  /* Device Type ID.  */
@property(nonatomic) NSString* issuerDn;  /* Issuer Distinguished Name  */
@property(nonatomic) NSNumber* latestVersion;  /* Latest Manifest version.  */
@property(nonatomic) NSString* name;  /* Name.  */
@property(nonatomic) NSNumber* published;  /* Published status.  */
@property(nonatomic) NSNumber* rsp;  /* Require Secure Protocol.  */
@property(nonatomic) NSString* uid;  /* User ID.  */
@property(nonatomic) NSString* uniqueName;  /* Unique Name.  */
@property(nonatomic) NSString* vid;  /* Vendor ID.  */
- (id) approved: (NSNumber*) approved     
    _id: (NSString*) _id     
    issuerDn: (NSString*) issuerDn     
    latestVersion: (NSNumber*) latestVersion     
    name: (NSString*) name     
    published: (NSNumber*) published     
    rsp: (NSNumber*) rsp     
    uid: (NSString*) uid     
    uniqueName: (NSString*) uniqueName     
    vid: (NSString*) vid;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
