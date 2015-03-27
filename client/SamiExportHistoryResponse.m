#import "SWGDate.h"
#import "SamiExportHistoryResponse.h"

@implementation SamiExportHistoryResponse

-(id)count: (NSNumber*) count
    data: (SamiExportDataArray*) data
    offset: (NSNumber*) offset
    total: (NSNumber*) total
    
{
    _count = count;
    _data = data;
    _offset = offset;
    _total = total;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _count = dict[@"count"];
        
        
        
        id data_dict = dict[@"data"];
        
        if(data_dict != nil)
            _data = [[SamiExportDataArray  alloc]initWithValues:data_dict];
        
        
        _offset = dict[@"offset"];
        
        _total = dict[@"total"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_count != nil) dict[@"count"] = _count ;
        
    
    
    if(_data != nil){
        if([_data isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SamiExportDataArray *data in (NSArray*)_data) {
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
    
    
    
            if(_offset != nil) dict[@"offset"] = _offset ;
        
    
    
            if(_total != nil) dict[@"total"] = _total ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end
