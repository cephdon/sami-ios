#import "SWGDate.h"
#import "SamiUserEnvelope.h"

@implementation SamiUserEnvelope

-(id)data: (SamiUser*) data { 
    
    _data = data;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        id data_dict = dict[@"data"];
        if(data_dict != nil)
            _data = [[SamiUser  alloc]initWithValues:data_dict];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    if(_data != nil){
        
        
        if(_data && [_data isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_data toString];
            if(dateString){
            dict[@"data"] = dateString;
            }
        }
        else {
            if(_data != nil)
            dict[@"data"] = [(SWGObject*)_data asDictionary];
        }
        
    }
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
