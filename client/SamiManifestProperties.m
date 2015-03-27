#import "SWGDate.h"
#import "SamiManifestProperties.h"

@implementation SamiManifestProperties

-(id)properties: (NSDictionary*) properties
    
{
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
    
    
            if(_properties != nil) dict[@"properties"] = _properties ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end
