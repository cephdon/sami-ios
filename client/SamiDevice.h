#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SamiDevice : SWGObject

@property(nonatomic) NSString* certificateInfo;  /* Certificate Info (if any)  */
@property(nonatomic) NSString* certificateSignature;  /* Certificate Signature (if any)  */
@property(nonatomic) NSNumber* createdOn;  /* Created On (milliseconds since epoch)  */
@property(nonatomic) NSString* dtid;  /* Device Type ID  */
@property(nonatomic) NSString* eid;  /* External ID (if any)  */
@property(nonatomic) NSString* _id;  /* Device ID  */
@property(nonatomic) NSNumber* manifestVersion;  /* Manifest Version  */
@property(nonatomic) NSString* manifestVersionPolicy;  /* Manifest Version Policy (LATEST, DEVICE)  */
@property(nonatomic) NSString* name;  /* Name  */
@property(nonatomic) NSNumber* needProviderAuth;  /* Needs Provider Authentication  */
@property(nonatomic) NSString* uid;  /* User ID  */
@property(nonatomic) NSDictionary* properties;  
@property(nonatomic) NSDictionary* providerCredentials;  
- (id) certificateInfo: (NSString*) certificateInfo     
    certificateSignature: (NSString*) certificateSignature     
    createdOn: (NSNumber*) createdOn     
    dtid: (NSString*) dtid     
    eid: (NSString*) eid     
    _id: (NSString*) _id     
    manifestVersion: (NSNumber*) manifestVersion     
    manifestVersionPolicy: (NSString*) manifestVersionPolicy     
    name: (NSString*) name     
    needProviderAuth: (NSNumber*) needProviderAuth     
    uid: (NSString*) uid     
    properties: (NSDictionary*) properties     
    providerCredentials: (NSDictionary*) providerCredentials;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
