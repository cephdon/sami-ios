#import "SWGDate.h"
#import "SamiExportData.h"

@implementation SamiExportData

-(id)expirationDate: (NSNumber*) expirationDate
    exportId: (NSString*) exportId
    fileSize: (NSNumber*) fileSize
    md5: (NSString*) md5
    request: (SamiExportRequest*) request
    status: (NSString*) status
    totalMessages: (NSNumber*) totalMessages
    
{
    _expirationDate = expirationDate;
    _exportId = exportId;
    _fileSize = fileSize;
    _md5 = md5;
    _request = request;
    _status = status;
    _totalMessages = totalMessages;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _expirationDate = dict[@"expirationDate"];
        
        _exportId = dict[@"exportId"];
        
        _fileSize = dict[@"fileSize"];
        
        _md5 = dict[@"md5"];
        
        
        
        id request_dict = dict[@"request"];
        
        if(request_dict != nil)
            _request = [[SamiExportRequest  alloc]initWithValues:request_dict];
        
        
        _status = dict[@"status"];
        
        _totalMessages = dict[@"totalMessages"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_expirationDate != nil) dict[@"expirationDate"] = _expirationDate ;
        
    
    
            if(_exportId != nil) dict[@"exportId"] = _exportId ;
        
    
    
            if(_fileSize != nil) dict[@"fileSize"] = _fileSize ;
        
    
    
            if(_md5 != nil) dict[@"md5"] = _md5 ;
        
    
    
    if(_request != nil){
        if([_request isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SamiExportRequest *request in (NSArray*)_request) {
                [array addObject:[(SWGObject*)request asDictionary]];
            }
            dict[@"request"] = array;
        }
        else if(_request && [_request isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_request toString];
            if(dateString){
                dict[@"request"] = dateString;
            }
        }
        else {
        
            if(_request != nil) dict[@"request"] = [(SWGObject*)_request asDictionary];
        
        }
    }
    
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    
    
            if(_totalMessages != nil) dict[@"totalMessages"] = _totalMessages ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end
