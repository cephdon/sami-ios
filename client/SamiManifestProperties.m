#import "SWGDate.h"
#import "SamiManifestProperties.h"

@implementation SamiManifestProperties

-(id)properties: (NSDictionary*) properties { 
    
    _properties = properties;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _properties = dict[@"properties"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    
    if(_properties != nil) {
        if([_properties isKindOfClass:[NSArray class]]) {
            dict[@"_properties"] = [[NSArray alloc] initWithArray: (NSArray*) _properties copyItems:true];
        }
        else if([_properties isKindOfClass:[NSDictionary class]]) {
            dict[@"properties"] = [[NSDictionary alloc] initWithDictionary:(NSDictionary*)_properties copyItems:true];
        }
    }
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
