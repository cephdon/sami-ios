#import "SWGDate.h"
#import "SamiExportRequestInfo.h"

@implementation SamiExportRequestInfo

-(id)csvHeaders: (NSNumber*) csvHeaders
    endDate: (NSNumber*) endDate
    format: (NSString*) format
    order: (NSString*) order
    sdids: (NSString*) sdids
    sdtids: (NSString*) sdtids
    startDate: (NSNumber*) startDate
    trialId: (NSString*) trialId
    uids: (NSString*) uids
    url: (NSString*) url
    
{
    _csvHeaders = csvHeaders;
    _endDate = endDate;
    _format = format;
    _order = order;
    _sdids = sdids;
    _sdtids = sdtids;
    _startDate = startDate;
    _trialId = trialId;
    _uids = uids;
    _url = url;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _csvHeaders = dict[@"csvHeaders"];
        
        _endDate = dict[@"endDate"];
        
        _format = dict[@"format"];
        
        _order = dict[@"order"];
        
        _sdids = dict[@"sdids"];
        
        _sdtids = dict[@"sdtids"];
        
        _startDate = dict[@"startDate"];
        
        _trialId = dict[@"trialId"];
        
        _uids = dict[@"uids"];
        
        _url = dict[@"url"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_csvHeaders != nil) dict[@"csvHeaders"] = _csvHeaders ;
        
    
    
            if(_endDate != nil) dict[@"endDate"] = _endDate ;
        
    
    
            if(_format != nil) dict[@"format"] = _format ;
        
    
    
            if(_order != nil) dict[@"order"] = _order ;
        
    
    
            if(_sdids != nil) dict[@"sdids"] = _sdids ;
        
    
    
            if(_sdtids != nil) dict[@"sdtids"] = _sdtids ;
        
    
    
            if(_startDate != nil) dict[@"startDate"] = _startDate ;
        
    
    
            if(_trialId != nil) dict[@"trialId"] = _trialId ;
        
    
    
            if(_uids != nil) dict[@"uids"] = _uids ;
        
    
    
            if(_url != nil) dict[@"url"] = _url ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end
