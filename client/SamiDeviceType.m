#import "SWGDate.h"
#import "SamiDeviceType.h"

@implementation SamiDeviceType

-(id)approved: (NSNumber*) approved
    _id: (NSString*) _id
    issuerDn: (NSString*) issuerDn
    latestVersion: (NSNumber*) latestVersion
    name: (NSString*) name
    published: (NSNumber*) published
    rsp: (NSNumber*) rsp
    uid: (NSString*) uid
    uniqueName: (NSString*) uniqueName
    vid: (NSString*) vid
    
{
    _approved = approved;
    __id = _id;
    _issuerDn = issuerDn;
    _latestVersion = latestVersion;
    _name = name;
    _published = published;
    _rsp = rsp;
    _uid = uid;
    _uniqueName = uniqueName;
    _vid = vid;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _approved = dict[@"approved"];
        
        __id = dict[@"id"];
        
        _issuerDn = dict[@"issuerDn"];
        
        _latestVersion = dict[@"latestVersion"];
        
        _name = dict[@"name"];
        
        _published = dict[@"published"];
        
        _rsp = dict[@"rsp"];
        
        _uid = dict[@"uid"];
        
        _uniqueName = dict[@"uniqueName"];
        
        _vid = dict[@"vid"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_approved != nil) dict[@"approved"] = _approved ;
        
    
    
            if(__id != nil) dict[@"id"] = __id ;
        
    
    
            if(_issuerDn != nil) dict[@"issuerDn"] = _issuerDn ;
        
    
    
            if(_latestVersion != nil) dict[@"latestVersion"] = _latestVersion ;
        
    
    
            if(_name != nil) dict[@"name"] = _name ;
        
    
    
            if(_published != nil) dict[@"published"] = _published ;
        
    
    
            if(_rsp != nil) dict[@"rsp"] = _rsp ;
        
    
    
            if(_uid != nil) dict[@"uid"] = _uid ;
        
    
    
            if(_uniqueName != nil) dict[@"uniqueName"] = _uniqueName ;
        
    
    
            if(_vid != nil) dict[@"vid"] = _vid ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end
