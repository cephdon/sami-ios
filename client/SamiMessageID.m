#import "SWGDate.h"
#import "SamiMessageID.h"

@implementation SamiMessageID

-(id)mid: (NSString*) mid { 
    
    _mid = mid;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _mid = dict[@"mid"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_mid != nil)
        dict[@"mid"] = _mid;
    
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
