#import "SWGDate.h"
#import "SamiAppProperties.h"

@implementation SamiAppProperties

-(id)uid: (NSString*) uid
    aid: (NSString*) aid
    properties: (NSString*) properties { 
    
    _uid = uid;
    _aid = aid;
    _properties = properties;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _uid = dict[@"uid"];
        _aid = dict[@"aid"];
        _properties = dict[@"properties"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_uid != nil)
        dict[@"uid"] = _uid;
    
    
    
    
    if(_aid != nil)
        dict[@"aid"] = _aid;
    
    
    
    
    if(_properties != nil)
        dict[@"properties"] = _properties;
    
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
