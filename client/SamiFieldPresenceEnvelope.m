#import "SWGDate.h"
#import "SamiFieldPresenceEnvelope.h"

@implementation SamiFieldPresenceEnvelope

-(id)sdid: (NSString*) sdid
    fieldPresence: (NSString*) fieldPresence
    startDate: (NSNumber*) startDate
    endDate: (NSNumber*) endDate
    interval: (NSString*) interval
    size: (NSNumber*) size
    data: (NSArray*) data { 
    
    _sdid = sdid;
    _fieldPresence = fieldPresence;
    _startDate = startDate;
    _endDate = endDate;
    _interval = interval;
    _size = size;
    _data = data;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _sdid = dict[@"sdid"];
        _fieldPresence = dict[@"fieldPresence"];
        _startDate = dict[@"startDate"];
        _endDate = dict[@"endDate"];
        _interval = dict[@"interval"];
        _size = dict[@"size"];
        
        id data_dict = dict[@"data"];
        if([data_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)data_dict count]];
            if([(NSArray*)data_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)data_dict) {
                    SamiFieldPresence* d = [[SamiFieldPresence  alloc] initWithValues:dict];
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
    
    
    
    
    if(_fieldPresence != nil)
        dict[@"fieldPresence"] = _fieldPresence;
    
    
    
    
    if(_startDate != nil)
        dict[@"startDate"] = _startDate;
    
    
    
    
    if(_endDate != nil)
        dict[@"endDate"] = _endDate;
    
    
    
    
    if(_interval != nil)
        dict[@"interval"] = _interval;
    
    
    
    
    if(_size != nil)
        dict[@"size"] = _size;
    
    
    
    if(_data != nil){
        
        if([_data isKindOfClass:[NSArray class]]){
        NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SamiFieldPresence *data in _data) {
                [array addObject:[(SWGObject*)data asDictionary]];
            }
            dict[@"data"] = array;
        }
        
        
    }
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
