#import "SWGDate.h"
#import "SamiExportStatusResponse.h"

@implementation SamiExportStatusResponse

-(id)expirationDate: (NSNumber*) expirationDate
    exportId: (NSString*) exportId
    md5: (NSString*) md5
    status: (NSString*) status
    ttl: (NSString*) ttl
    
{
    _expirationDate = expirationDate;
    _exportId = exportId;
    _md5 = md5;
    _status = status;
    _ttl = ttl;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _expirationDate = dict[@"expirationDate"];
        
        _exportId = dict[@"exportId"];
        
        _md5 = dict[@"md5"];
        
        _status = dict[@"status"];
        
        _ttl = dict[@"ttl"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_expirationDate != nil) dict[@"expirationDate"] = _expirationDate ;
        
    
    
            if(_exportId != nil) dict[@"exportId"] = _exportId ;
        
    
    
            if(_md5 != nil) dict[@"md5"] = _md5 ;
        
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    
    
            if(_ttl != nil) dict[@"ttl"] = _ttl ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end
