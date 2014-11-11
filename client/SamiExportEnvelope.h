#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SamiExportEnvelope : SWGObject

@property(nonatomic) NSString* exportId;  
@property(nonatomic) NSString* uid;  
@property(nonatomic) NSString* sdid;  
@property(nonatomic) NSNumber* startDate;  
@property(nonatomic) NSNumber* endDate;  
@property(nonatomic) NSString* order;  
@property(nonatomic) NSString* format;  
- (id) exportId: (NSString*) exportId
  
       uid: (NSString*) uid
  
       sdid: (NSString*) sdid
  
       startDate: (NSNumber*) startDate
  
       endDate: (NSNumber*) endDate
  
       order: (NSString*) order
  
       format: (NSString*) format;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
