#import "SWGDate.h"
#import "SamiDevice.h"

@implementation SamiDevice

-(id)_id: (NSString*) _id
    uid: (NSString*) uid
    dtid: (NSString*) dtid
    name: (NSString*) name
    manifestVersion: (NSNumber*) manifestVersion
    manifestVersionPolicy: (NSString*) manifestVersionPolicy
    needProviderAuth: (NSNumber*) needProviderAuth
    properties: (NSDictionary*) properties
    providerCredentials: (NSDictionary*) providerCredentials { 
    
    __id = _id;
    _uid = uid;
    _dtid = dtid;
    _name = name;
    _manifestVersion = manifestVersion;
    _manifestVersionPolicy = manifestVersionPolicy;
    _needProviderAuth = needProviderAuth;
    _properties = properties;
    _providerCredentials = providerCredentials;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        __id = dict[@"id"];
        _uid = dict[@"uid"];
        _dtid = dict[@"dtid"];
        _name = dict[@"name"];
        _manifestVersion = dict[@"manifestVersion"];
        _manifestVersionPolicy = dict[@"manifestVersionPolicy"];
        _needProviderAuth = dict[@"needProviderAuth"];
        _properties = dict[@"properties"];
        _providerCredentials = dict[@"providerCredentials"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(__id != nil)
        dict[@"id"] = __id;
    
    
    
    
    if(_uid != nil)
        dict[@"uid"] = _uid;
    
    
    
    
    if(_dtid != nil)
        dict[@"dtid"] = _dtid;
    
    
    
    
    if(_name != nil)
        dict[@"name"] = _name;
    
    
    
    
    if(_manifestVersion != nil)
        dict[@"manifestVersion"] = _manifestVersion;
    
    
    
    
    if(_manifestVersionPolicy != nil)
        dict[@"manifestVersionPolicy"] = _manifestVersionPolicy;
    
    
    
    
    if(_needProviderAuth != nil)
        dict[@"needProviderAuth"] = _needProviderAuth;
    
    
    
    
    
    if(_properties != nil) {
        if([_properties isKindOfClass:[NSArray class]]) {
            dict[@"_properties"] = [[NSArray alloc] initWithArray: (NSArray*) _properties copyItems:true];
        }
        else if([_properties isKindOfClass:[NSDictionary class]]) {
            dict[@"properties"] = [[NSDictionary alloc] initWithDictionary:(NSDictionary*)_properties copyItems:true];
        }
    }
    
    
    
    
    if(_providerCredentials != nil) {
        if([_providerCredentials isKindOfClass:[NSArray class]]) {
            dict[@"_providerCredentials"] = [[NSArray alloc] initWithArray: (NSArray*) _providerCredentials copyItems:true];
        }
        else if([_providerCredentials isKindOfClass:[NSDictionary class]]) {
            dict[@"providerCredentials"] = [[NSDictionary alloc] initWithDictionary:(NSDictionary*)_providerCredentials copyItems:true];
        }
    }
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
