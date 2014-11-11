#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SamiDevice : SWGObject

@property(nonatomic) NSString* _id;  
@property(nonatomic) NSString* uid;  
@property(nonatomic) NSString* dtid;  
@property(nonatomic) NSString* name;  
@property(nonatomic) NSNumber* manifestVersion;  
@property(nonatomic) NSString* manifestVersionPolicy;  
@property(nonatomic) NSNumber* needProviderAuth;  
@property(nonatomic) NSDictionary* properties;  
@property(nonatomic) NSDictionary* providerCredentials;  
- (id) _id: (NSString*) _id
  
       uid: (NSString*) uid
  
       dtid: (NSString*) dtid
  
       name: (NSString*) name
  
       manifestVersion: (NSNumber*) manifestVersion
  
       manifestVersionPolicy: (NSString*) manifestVersionPolicy
  
       needProviderAuth: (NSNumber*) needProviderAuth
  
       properties: (NSDictionary*) properties
  
       providerCredentials: (NSDictionary*) providerCredentials;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
