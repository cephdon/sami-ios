#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SamiAppProperties : SWGObject

@property(nonatomic) NSString* uid;  
@property(nonatomic) NSString* aid;  
@property(nonatomic) NSString* properties;  
- (id) uid: (NSString*) uid
  
       aid: (NSString*) aid
  
       properties: (NSString*) properties;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
