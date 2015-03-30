#import "SWGDate.h"
#import "SamiDeviceArray.h"

@implementation SamiDeviceArray

-(id)devices: (NSArray*) devices { 
    
    _devices = devices;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        id devices_dict = dict[@"devices"];
        if([devices_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)devices_dict count]];
            if([(NSArray*)devices_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)devices_dict) {
                    SamiDevice* d = [[SamiDevice  alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _devices = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _devices = [[NSArray alloc] init];
            }
        }
        else {
            _devices = [[NSArray alloc] init];
        }
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    if(_devices != nil){
        
        if([_devices isKindOfClass:[NSArray class]]){
        NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SamiDevice *devices in _devices) {
                [array addObject:[(SWGObject*)devices asDictionary]];
            }
            dict[@"devices"] = array;
        }
        
        
    }
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
