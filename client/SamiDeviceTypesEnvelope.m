#import "SWGDate.h"
#import "SamiDeviceTypesEnvelope.h"

@implementation SamiDeviceTypesEnvelope

-(id)total: (NSNumber*) total
    count: (NSNumber*) count
    offset: (NSNumber*) offset
    data: (SamiDeviceTypeArray*) data
    
{
    _total = total;
    _count = count;
    _offset = offset;
    _data = data;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _total = dict[@"total"];
        
        _count = dict[@"count"];
        
        _offset = dict[@"offset"];
        
        
        
        id data_dict = dict[@"data"];
        
        if(data_dict != nil)
            _data = [[SamiDeviceTypeArray  alloc]initWithValues:data_dict];
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_total != nil) dict[@"total"] = _total ;
        
    
    
            if(_count != nil) dict[@"count"] = _count ;
        
    
    
            if(_offset != nil) dict[@"offset"] = _offset ;
        
    
    
    if(_data != nil){
        if([_data isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SamiDeviceTypeArray *data in (NSArray*)_data) {
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
