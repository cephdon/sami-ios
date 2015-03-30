#import "SWGDate.h"
#import "SamiManifestVersions.h"

@implementation SamiManifestVersions

-(id)versions: (NSArray*) versions { 
    
    _versions = versions;
    
    return self;
}
-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _versions = dict[@"versions"];
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    
    if(_versions != nil) {
        if([_versions isKindOfClass:[NSArray class]]) {
            dict[@"_versions"] = [[NSArray alloc] initWithArray: (NSArray*) _versions copyItems:true];
        }
        else if([_versions isKindOfClass:[NSDictionary class]]) {
            dict[@"versions"] = [[NSDictionary alloc] initWithDictionary:(NSDictionary*)_versions copyItems:true];
        }
    }
    
    
    NSDictionary* output = [dict copy];
    return output;
}

@end
