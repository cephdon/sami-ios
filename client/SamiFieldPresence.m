#import "SWGDate.h"
#import "SamiFieldPresence.h"

@implementation SamiFieldPresence

-(id)startDate: (NSNumber*) startDate
    
{
    _startDate = startDate;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _startDate = dict[@"startDate"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_startDate != nil) dict[@"startDate"] = _startDate ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end
