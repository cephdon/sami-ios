#import "SWGDate.h"
#import "SamiAggregates.h"

@implementation SamiAggregates

-(id)count: (NSNumber*) count
    min: (NSNumber*) min
    max: (NSNumber*) max
    mean: (NSNumber*) mean
    sum: (NSNumber*) sum { 
    
    _count = count;
    _min = min;
    _max = max;
    _mean = mean;
    _sum = sum;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _count = dict[@"count"];
        _min = dict[@"min"];
        _max = dict[@"max"];
        _mean = dict[@"mean"];
        _sum = dict[@"sum"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_count != nil)
        dict[@"count"] = _count;
    
    
    
    
    if(_min != nil)
        dict[@"min"] = _min;
    
    
    
    
    if(_max != nil)
        dict[@"max"] = _max;
    
    
    
    
    if(_mean != nil)
        dict[@"mean"] = _mean;
    
    
    
    
    if(_sum != nil)
        dict[@"sum"] = _sum;
    
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
