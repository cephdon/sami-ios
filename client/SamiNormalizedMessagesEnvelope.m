#import "SWGDate.h"
#import "SamiNormalizedMessagesEnvelope.h"

@implementation SamiNormalizedMessagesEnvelope

-(id)sdids: (NSString*) sdids
    sdid: (NSString*) sdid
    uid: (NSString*) uid
    startDate: (NSNumber*) startDate
    endDate: (NSNumber*) endDate
    order: (NSString*) order
    next: (NSString*) next
    count: (NSNumber*) count
    size: (NSNumber*) size
    data: (NSArray*) data { 
    
    _sdids = sdids;
    _sdid = sdid;
    _uid = uid;
    _startDate = startDate;
    _endDate = endDate;
    _order = order;
    _next = next;
    _count = count;
    _size = size;
    _data = data;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _sdids = dict[@"sdids"];
        _sdid = dict[@"sdid"];
        _uid = dict[@"uid"];
        _startDate = dict[@"startDate"];
        _endDate = dict[@"endDate"];
        _order = dict[@"order"];
        _next = dict[@"next"];
        _count = dict[@"count"];
        _size = dict[@"size"];
        
        id data_dict = dict[@"data"];
        if([data_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)data_dict count]];
            if([(NSArray*)data_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)data_dict) {
                    SamiNormalizedMessage* d = [[SamiNormalizedMessage  alloc] initWithValues:dict];
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
    
    
    if(_sdids != nil)
        dict[@"sdids"] = _sdids;
    
    
    
    
    if(_sdid != nil)
        dict[@"sdid"] = _sdid;
    
    
    
    
    if(_uid != nil)
        dict[@"uid"] = _uid;
    
    
    
    
    if(_startDate != nil)
        dict[@"startDate"] = _startDate;
    
    
    
    
    if(_endDate != nil)
        dict[@"endDate"] = _endDate;
    
    
    
    
    if(_order != nil)
        dict[@"order"] = _order;
    
    
    
    
    if(_next != nil)
        dict[@"next"] = _next;
    
    
    
    
    if(_count != nil)
        dict[@"count"] = _count;
    
    
    
    
    if(_size != nil)
        dict[@"size"] = _size;
    
    
    
    if(_data != nil){
        
        if([_data isKindOfClass:[NSArray class]]){
        NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SamiNormalizedMessage *data in _data) {
                [array addObject:[(SWGObject*)data asDictionary]];
            }
            dict[@"data"] = array;
        }
        
        
    }
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
