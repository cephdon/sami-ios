#import "SWGDate.h"
#import "SamiExportNormalizedMessagesResponse.h"

@implementation SamiExportNormalizedMessagesResponse

-(id)csvHeaders: (NSNumber*) csvHeaders
    endDate: (NSNumber*) endDate
    exportId: (NSString*) exportId
    format: (NSString*) format
    order: (NSString*) order
    sdid: (NSString*) sdid
    sdids: (NSString*) sdids
    startDate: (NSNumber*) startDate
    stdids: (NSString*) stdids
    trialId: (NSString*) trialId
    uid: (NSString*) uid
    uids: (NSString*) uids
    url: (NSString*) url
    
{
    _csvHeaders = csvHeaders;
    _endDate = endDate;
    _exportId = exportId;
    _format = format;
    _order = order;
    _sdid = sdid;
    _sdids = sdids;
    _startDate = startDate;
    _stdids = stdids;
    _trialId = trialId;
    _uid = uid;
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
        
        _exportId = dict[@"exportId"];
        
        _format = dict[@"format"];
        
        _order = dict[@"order"];
        
        _sdid = dict[@"sdid"];
        
        _sdids = dict[@"sdids"];
        
        _startDate = dict[@"startDate"];
        
        _stdids = dict[@"stdids"];
        
        _trialId = dict[@"trialId"];
        
        _uid = dict[@"uid"];
        
        _uids = dict[@"uids"];
        
        _url = dict[@"url"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_csvHeaders != nil) dict[@"csvHeaders"] = _csvHeaders ;
        
    
    
            if(_endDate != nil) dict[@"endDate"] = _endDate ;
        
    
    
            if(_exportId != nil) dict[@"exportId"] = _exportId ;
        
    
    
            if(_format != nil) dict[@"format"] = _format ;
        
    
    
            if(_order != nil) dict[@"order"] = _order ;
        
    
    
            if(_sdid != nil) dict[@"sdid"] = _sdid ;
        
    
    
            if(_sdids != nil) dict[@"sdids"] = _sdids ;
        
    
    
            if(_startDate != nil) dict[@"startDate"] = _startDate ;
        
    
    
            if(_stdids != nil) dict[@"stdids"] = _stdids ;
        
    
    
            if(_trialId != nil) dict[@"trialId"] = _trialId ;
        
    
    
            if(_uid != nil) dict[@"uid"] = _uid ;
        
    
    
            if(_uids != nil) dict[@"uids"] = _uids ;
        
    
    
            if(_url != nil) dict[@"url"] = _url ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end
