#import "SWGDate.h"
#import "SamiDeviceToken.h"

@implementation SamiDeviceToken

-(id)accessToken: (NSString*) accessToken
    uid: (NSString*) uid
    did: (NSString*) did
    cid: (NSString*) cid { 
    
    _accessToken = accessToken;
    _uid = uid;
    _did = did;
    _cid = cid;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _accessToken = dict[@"accessToken"];
        _uid = dict[@"uid"];
        _did = dict[@"did"];
        _cid = dict[@"cid"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_accessToken != nil)
        dict[@"accessToken"] = _accessToken;
    
    
    
    
    if(_uid != nil)
        dict[@"uid"] = _uid;
    
    
    
    
    if(_did != nil)
        dict[@"did"] = _did;
    
    
    
    
    if(_cid != nil)
        dict[@"cid"] = _cid;
    
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
