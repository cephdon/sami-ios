#import "SWGDate.h"
#import "SamiExportStatusEnvelope.h"

@implementation SamiExportStatusEnvelope

-(id)exportId: (NSString*) exportId
    status: (NSString*) status { 
    
    _exportId = exportId;
    _status = status;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _exportId = dict[@"exportId"];
        _status = dict[@"status"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_exportId != nil)
        dict[@"exportId"] = _exportId;
    
    
    
    
    if(_status != nil)
        dict[@"status"] = _status;
    
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
