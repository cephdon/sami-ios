#import "SWGDate.h"
#import "SamiDeviceType.h"

@implementation SamiDeviceType

-(id)_id: (NSString*) _id
    uid: (NSString*) uid
    name: (NSString*) name
    published: (NSNumber*) published
    approved: (NSNumber*) approved
    latestVersion: (NSNumber*) latestVersion
    uniqueName: (NSString*) uniqueName { 
    
    __id = _id;
    _uid = uid;
    _name = name;
    _published = published;
    _approved = approved;
    _latestVersion = latestVersion;
    _uniqueName = uniqueName;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        __id = dict[@"id"];
        _uid = dict[@"uid"];
        _name = dict[@"name"];
        _published = dict[@"published"];
        _approved = dict[@"approved"];
        _latestVersion = dict[@"latestVersion"];
        _uniqueName = dict[@"uniqueName"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(__id != nil)
        dict[@"id"] = __id;
    
    
    
    
    if(_uid != nil)
        dict[@"uid"] = _uid;
    
    
    
    
    if(_name != nil)
        dict[@"name"] = _name;
    
    
    
    
    if(_published != nil)
        dict[@"published"] = _published;
    
    
    
    
    if(_approved != nil)
        dict[@"approved"] = _approved;
    
    
    
    
    if(_latestVersion != nil)
        dict[@"latestVersion"] = _latestVersion;
    
    
    
    
    if(_uniqueName != nil)
        dict[@"uniqueName"] = _uniqueName;
    
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
