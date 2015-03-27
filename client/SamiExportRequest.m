#import "SWGDate.h"
#import "SamiExportRequest.h"

@implementation SamiExportRequest

-(id)endDate: (NSNumber*) endDate
    format: (NSString*) format
    order: (NSString*) order
    sdids: (NSString*) sdids
    sdtids: (NSString*) sdtids
    startDate: (NSNumber*) startDate
    trialId: (NSString*) trialId
    uids: (NSString*) uids
    
{
    _endDate = endDate;
    _format = format;
    _order = order;
    _sdids = sdids;
    _sdtids = sdtids;
    _startDate = startDate;
    _trialId = trialId;
    _uids = uids;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _endDate = dict[@"endDate"];
        
        _format = dict[@"format"];
        
        _order = dict[@"order"];
        
        _sdids = dict[@"sdids"];
        
        _sdtids = dict[@"sdtids"];
        
        _startDate = dict[@"startDate"];
        
        _trialId = dict[@"trialId"];
        
        _uids = dict[@"uids"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_endDate != nil) dict[@"endDate"] = _endDate ;
        
    
    
            if(_format != nil) dict[@"format"] = _format ;
        
    
    
            if(_order != nil) dict[@"order"] = _order ;
        
    
    
            if(_sdids != nil) dict[@"sdids"] = _sdids ;
        
    
    
            if(_sdtids != nil) dict[@"sdtids"] = _sdtids ;
        
    
    
            if(_startDate != nil) dict[@"startDate"] = _startDate ;
        
    
    
            if(_trialId != nil) dict[@"trialId"] = _trialId ;
        
    
    
            if(_uids != nil) dict[@"uids"] = _uids ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end
