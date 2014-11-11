#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SamiAggregates : SWGObject

@property(nonatomic) NSNumber* count;  
@property(nonatomic) NSNumber* min;  
@property(nonatomic) NSNumber* max;  
@property(nonatomic) NSNumber* mean;  
@property(nonatomic) NSNumber* sum;  
- (id) count: (NSNumber*) count
  
       min: (NSNumber*) min
  
       max: (NSNumber*) max
  
       mean: (NSNumber*) mean
  
       sum: (NSNumber*) sum;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
