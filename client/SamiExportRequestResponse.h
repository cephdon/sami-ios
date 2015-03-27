#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SamiExportRequestData.h"


@interface SamiExportRequestResponse : SWGObject

@property(nonatomic) SamiExportRequestData* data;  
- (id) data: (SamiExportRequestData*) data;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
