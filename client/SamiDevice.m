#import "SWGDate.h"
#import "SamiDevice.h"

@implementation SamiDevice

-(id)certificateInfo: (NSString*) certificateInfo
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
    providerCredentials: (NSDictionary*) providerCredentials
    
{
    _certificateInfo = certificateInfo;
    _certificateSignature = certificateSignature;
    _createdOn = createdOn;
    _dtid = dtid;
    _eid = eid;
    __id = _id;
    _manifestVersion = manifestVersion;
    _manifestVersionPolicy = manifestVersionPolicy;
    _name = name;
    _needProviderAuth = needProviderAuth;
    _uid = uid;
    _properties = properties;
    _providerCredentials = providerCredentials;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _certificateInfo = dict[@"certificateInfo"];
        
        _certificateSignature = dict[@"certificateSignature"];
        
        _createdOn = dict[@"createdOn"];
        
        _dtid = dict[@"dtid"];
        
        _eid = dict[@"eid"];
        
        __id = dict[@"id"];
        
        _manifestVersion = dict[@"manifestVersion"];
        
        _manifestVersionPolicy = dict[@"manifestVersionPolicy"];
        
        _name = dict[@"name"];
        
        _needProviderAuth = dict[@"needProviderAuth"];
        
        _uid = dict[@"uid"];
        
        _properties = dict[@"properties"];
        
        _providerCredentials = dict[@"providerCredentials"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_certificateInfo != nil) dict[@"certificateInfo"] = _certificateInfo ;
        
    
    
            if(_certificateSignature != nil) dict[@"certificateSignature"] = _certificateSignature ;
        
    
    
            if(_createdOn != nil) dict[@"createdOn"] = _createdOn ;
        
    
    
            if(_dtid != nil) dict[@"dtid"] = _dtid ;
        
    
    
            if(_eid != nil) dict[@"eid"] = _eid ;
        
    
    
            if(__id != nil) dict[@"id"] = __id ;
        
    
    
            if(_manifestVersion != nil) dict[@"manifestVersion"] = _manifestVersion ;
        
    
    
            if(_manifestVersionPolicy != nil) dict[@"manifestVersionPolicy"] = _manifestVersionPolicy ;
        
    
    
            if(_name != nil) dict[@"name"] = _name ;
        
    
    
            if(_needProviderAuth != nil) dict[@"needProviderAuth"] = _needProviderAuth ;
        
    
    
            if(_uid != nil) dict[@"uid"] = _uid ;
        
    
    
            if(_properties != nil) dict[@"properties"] = _properties ;
        
    
    
            if(_providerCredentials != nil) dict[@"providerCredentials"] = _providerCredentials ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end
