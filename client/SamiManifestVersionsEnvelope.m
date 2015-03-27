#import "SWGDate.h"
#import "SamiManifestVersionsEnvelope.h"

@implementation SamiManifestVersionsEnvelope

-(id)data: (SamiManifestVersions*) data
    
{
    _data = data;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        
        id data_dict = dict[@"data"];
        
        if(data_dict != nil)
            _data = [[SamiManifestVersions  alloc]initWithValues:data_dict];
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_data != nil){
        if([_data isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SamiManifestVersions *data in (NSArray*)_data) {
                [array addObject:[(SWGObject*)data asDictionary]];
            }
            dict[@"data"] = array;
        }
        else if(_data && [_data isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_data toString];
            if(dateString){
                dict[@"data"] = dateString;
            }
        }
        else {
        
            if(_data != nil) dict[@"data"] = [(SWGObject*)_data asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end
