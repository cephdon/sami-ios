#import "SWGDate.h"
#import "SamiNormalizedMessage.h"

@implementation SamiNormalizedMessage

-(id)cts: (NSNumber*) cts
    ts: (NSNumber*) ts
    mid: (NSString*) mid
    sdid: (NSString*) sdid
    sdtid: (NSString*) sdtid
    uid: (NSString*) uid
    mv: (NSNumber*) mv
    data: (NSDictionary*) data { 
    
    _cts = cts;
    _ts = ts;
    _mid = mid;
    _sdid = sdid;
    _sdtid = sdtid;
    _uid = uid;
    _mv = mv;
    _data = data;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _cts = dict[@"cts"];
        _ts = dict[@"ts"];
        _mid = dict[@"mid"];
        _sdid = dict[@"sdid"];
        _sdtid = dict[@"sdtid"];
        _uid = dict[@"uid"];
        _mv = dict[@"mv"];
        _data = dict[@"data"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_cts != nil)
        dict[@"cts"] = _cts;
    
    
    
    
    if(_ts != nil)
        dict[@"ts"] = _ts;
    
    
    
    
    if(_mid != nil)
        dict[@"mid"] = _mid;
    
    
    
    
    if(_sdid != nil)
        dict[@"sdid"] = _sdid;
    
    
    
    
    if(_sdtid != nil)
        dict[@"sdtid"] = _sdtid;
    
    
    
    
    if(_uid != nil)
        dict[@"uid"] = _uid;
    
    
    
    
    if(_mv != nil)
        dict[@"mv"] = _mv;
    
    
    
    
    
    if(_data != nil) {
        if([_data isKindOfClass:[NSArray class]]) {
            dict[@"_data"] = [[NSArray alloc] initWithArray: (NSArray*) _data copyItems:true];
        }
        else if([_data isKindOfClass:[NSDictionary class]]) {
            dict[@"data"] = [[NSDictionary alloc] initWithDictionary:(NSDictionary*)_data copyItems:true];
        }
    }
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
