#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SamiExportData.h"


@interface SamiExportDataArray : SWGObject

@property(nonatomic) NSArray* exports;  
- (id) exports: (NSArray*) exports;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
