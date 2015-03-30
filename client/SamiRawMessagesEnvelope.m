#import "SWGDate.h"
#import "SamiRawMessagesEnvelope.h"

@implementation SamiRawMessagesEnvelope

-(id)sdid: (NSString*) sdid
    mid: (NSString*) mid
    startDate: (NSNumber*) startDate
    endDate: (NSNumber*) endDate
    count: (NSNumber*) count
    order: (NSString*) order
    size: (NSNumber*) size
    data: (NSArray*) data { 
    
    _sdid = sdid;
    _mid = mid;
    _startDate = startDate;
    _endDate = endDate;
    _count = count;
    _order = order;
    _size = size;
    _data = data;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _sdid = dict[@"sdid"];
        _mid = dict[@"mid"];
        _startDate = dict[@"startDate"];
        _endDate = dict[@"endDate"];
        _count = dict[@"count"];
        _order = dict[@"order"];
        _size = dict[@"size"];
        
        id data_dict = dict[@"data"];
        if([data_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)data_dict count]];
            if([(NSArray*)data_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)data_dict) {
                    SamiRawMessage* d = [[SamiRawMessage  alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _data = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _data = [[NSArray alloc] init];
            }
        }
        else {
            _data = [[NSArray alloc] init];
        }
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_sdid != nil)
        dict[@"sdid"] = _sdid;
    
    
    
    
    if(_mid != nil)
        dict[@"mid"] = _mid;
    
    
    
    
    if(_startDate != nil)
        dict[@"startDate"] = _startDate;
    
    
    
    
    if(_endDate != nil)
        dict[@"endDate"] = _endDate;
    
    
    
    
    if(_count != nil)
        dict[@"count"] = _count;
    
    
    
    
    if(_order != nil)
        dict[@"order"] = _order;
    
    
    
    
    if(_size != nil)
        dict[@"size"] = _size;
    
    
    
    if(_data != nil){
        
        if([_data isKindOfClass:[NSArray class]]){
        NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SamiRawMessage *data in _data) {
                [array addObject:[(SWGObject*)data asDictionary]];
            }
            dict[@"data"] = array;
        }
        
        
    }
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
