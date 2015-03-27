#import "SWGDate.h"
#import "SamiAggregatesEnvelope.h"

@implementation SamiAggregatesEnvelope

-(id)sdid: (NSString*) sdid
    field: (NSString*) field
    startDate: (NSNumber*) startDate
    endDate: (NSNumber*) endDate
    size: (NSNumber*) size
    data: (NSArray*) data
    
{
    _sdid = sdid;
    _field = field;
    _startDate = startDate;
    _endDate = endDate;
    _size = size;
    _data = data;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _sdid = dict[@"sdid"];
        
        _field = dict[@"field"];
        
        _startDate = dict[@"startDate"];
        
        _endDate = dict[@"endDate"];
        
        _size = dict[@"size"];
        
        
        
        id data_dict = dict[@"data"];
        
        if([data_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)data_dict count]];
            if([(NSArray*)data_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)data_dict) {
                    SamiAggregates* d = [[SamiAggregates alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _data = [[NSArray alloc] initWithArray:objs];
            }
            else
                _data = [[NSArray alloc] init];
        }
        else {
            _data = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_sdid != nil) dict[@"sdid"] = _sdid ;
        
    
    
            if(_field != nil) dict[@"field"] = _field ;
        
    
    
            if(_startDate != nil) dict[@"startDate"] = _startDate ;
        
    
    
            if(_endDate != nil) dict[@"endDate"] = _endDate ;
        
    
    
            if(_size != nil) dict[@"size"] = _size ;
        
    
    
    if(_data != nil){
        if([_data isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SamiAggregates *data in (NSArray*)_data) {
                [array addObject:[(SWGObject*)data asDictionary]];
            }
            dict[@"data"] = array;
        }
        else if(_data && [_data isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_data toString];
            if(dateString){
                dict[@"data"] = dateString;
            }
        }
        else {
        
            if(_data != nil) dict[@"data"] = [(SWGObject*)_data asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end
