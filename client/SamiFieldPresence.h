#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SamiFieldPresence : SWGObject

@property(nonatomic) NSNumber* startDate;  
- (id) startDate: (NSNumber*) startDate;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
