#import "SWGDate.h"
#import "SamiExportStatusData.h"

@implementation SamiExportStatusData

-(id)expirationDate: (NSNumber*) expirationDate
    exportId: (NSString*) exportId
    md5: (NSString*) md5
    status: (NSString*) status
    
{
    _expirationDate = expirationDate;
    _exportId = exportId;
    _md5 = md5;
    _status = status;
    

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
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_expirationDate != nil) dict[@"expirationDate"] = _expirationDate ;
        
    
    
            if(_exportId != nil) dict[@"exportId"] = _exportId ;
        
    
    
            if(_md5 != nil) dict[@"md5"] = _md5 ;
        
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end
