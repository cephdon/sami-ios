#import "SWGDate.h"
#import "SamiRawMessage.h"

@implementation SamiRawMessage

-(id)cts: (NSNumber*) cts
    ts: (NSNumber*) ts
    mid: (NSString*) mid
    sdid: (NSString*) sdid
    data: (NSString*) data { 
    
    _cts = cts;
    _ts = ts;
    _mid = mid;
    _sdid = sdid;
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
    
    
    
    
    if(_data != nil)
        dict[@"data"] = _data;
    
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
