#import "SWGDate.h"
#import "SamiMessage.h"

@implementation SamiMessage

-(id)sdid: (NSString*) sdid
    ddid: (NSString*) ddid
    ts: (NSNumber*) ts
    token: (NSString*) token
    data: (NSDictionary*) data { 
    
    _sdid = sdid;
    _ddid = ddid;
    _ts = ts;
    _token = token;
    _data = data;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _sdid = dict[@"sdid"];
        _ddid = dict[@"ddid"];
        _ts = dict[@"ts"];
        _token = dict[@"token"];
        _data = dict[@"data"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_sdid != nil)
        dict[@"sdid"] = _sdid;
    
    
    
    
    if(_ddid != nil)
        dict[@"ddid"] = _ddid;
    
    
    
    
    if(_ts != nil)
        dict[@"ts"] = _ts;
    
    
    
    
    if(_token != nil)
        dict[@"token"] = _token;
    
    
    
    
    
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
