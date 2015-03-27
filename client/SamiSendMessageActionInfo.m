#import "SWGDate.h"
#import "SamiSendMessageActionInfo.h"

@implementation SamiSendMessageActionInfo

-(id)data: (NSDictionary*) data
    ddid: (NSString*) ddid
    sdid: (NSString*) sdid
    ts: (NSNumber*) ts
    type: (NSString*) type
    
{
    _data = data;
    _ddid = ddid;
    _sdid = sdid;
    _ts = ts;
    _type = type;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _data = dict[@"data"];
        
        _ddid = dict[@"ddid"];
        
        _sdid = dict[@"sdid"];
        
        _ts = dict[@"ts"];
        
        _type = dict[@"type"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_data != nil) dict[@"data"] = _data ;
        
    
    
            if(_ddid != nil) dict[@"ddid"] = _ddid ;
        
    
    
            if(_sdid != nil) dict[@"sdid"] = _sdid ;
        
    
    
            if(_ts != nil) dict[@"ts"] = _ts ;
        
    
    
            if(_type != nil) dict[@"type"] = _type ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end
