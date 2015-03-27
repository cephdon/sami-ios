#import "SWGDate.h"
#import "SamiExportDataArray.h"

@implementation SamiExportDataArray

-(id)exports: (NSArray*) exports
    
{
    _exports = exports;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        
        id exports_dict = dict[@"exports"];
        
        if([exports_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)exports_dict count]];
            if([(NSArray*)exports_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)exports_dict) {
                    SamiExportData* d = [[SamiExportData alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _exports = [[NSArray alloc] initWithArray:objs];
            }
            else
                _exports = [[NSArray alloc] init];
        }
        else {
            _exports = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_exports != nil){
        if([_exports isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SamiExportData *exports in (NSArray*)_exports) {
                [array addObject:[(SWGObject*)exports asDictionary]];
            }
            dict[@"exports"] = array;
        }
        else if(_exports && [_exports isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_exports toString];
            if(dateString){
                dict[@"exports"] = dateString;
            }
        }
        else {
        
            if(_exports != nil) dict[@"exports"] = [(SWGObject*)_exports asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end
