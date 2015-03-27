#import "SWGDate.h"
#import "SamiManifestVersions.h"

@implementation SamiManifestVersions

-(id)versions: (NSArray*) versions
    
{
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
    
    
            if(_versions != nil) dict[@"versions"] = _versions ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end
