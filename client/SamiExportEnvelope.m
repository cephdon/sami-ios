#import "SWGDate.h"
#import "SamiExportEnvelope.h"

@implementation SamiExportEnvelope

-(id)exportId: (NSString*) exportId
    uid: (NSString*) uid
    sdid: (NSString*) sdid
    startDate: (NSNumber*) startDate
    endDate: (NSNumber*) endDate
    order: (NSString*) order
    format: (NSString*) format { 
    
    _exportId = exportId;
    _uid = uid;
    _sdid = sdid;
    _startDate = startDate;
    _endDate = endDate;
    _order = order;
    _format = format;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _exportId = dict[@"exportId"];
        _uid = dict[@"uid"];
        _sdid = dict[@"sdid"];
        _startDate = dict[@"startDate"];
        _endDate = dict[@"endDate"];
        _order = dict[@"order"];
        _format = dict[@"format"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_exportId != nil)
        dict[@"exportId"] = _exportId;
    
    
    
    
    if(_uid != nil)
        dict[@"uid"] = _uid;
    
    
    
    
    if(_sdid != nil)
        dict[@"sdid"] = _sdid;
    
    
    
    
    if(_startDate != nil)
        dict[@"startDate"] = _startDate;
    
    
    
    
    if(_endDate != nil)
        dict[@"endDate"] = _endDate;
    
    
    
    
    if(_order != nil)
        dict[@"order"] = _order;
    
    
    
    
    if(_format != nil)
        dict[@"format"] = _format;
    
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
