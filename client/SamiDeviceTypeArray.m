#import "SWGDate.h"
#import "SamiDeviceTypeArray.h"

@implementation SamiDeviceTypeArray

-(id)deviceTypes: (NSArray*) deviceTypes { 
    
    _deviceTypes = deviceTypes;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        id deviceTypes_dict = dict[@"deviceTypes"];
        if([deviceTypes_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)deviceTypes_dict count]];
            if([(NSArray*)deviceTypes_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)deviceTypes_dict) {
                    SamiDeviceType* d = [[SamiDeviceType  alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _deviceTypes = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _deviceTypes = [[NSArray alloc] init];
            }
        }
        else {
            _deviceTypes = [[NSArray alloc] init];
        }
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    if(_deviceTypes != nil){
        
        if([_deviceTypes isKindOfClass:[NSArray class]]){
        NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SamiDeviceType *deviceTypes in _deviceTypes) {
                [array addObject:[(SWGObject*)deviceTypes asDictionary]];
            }
            dict[@"deviceTypes"] = array;
        }
        
        
    }
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
