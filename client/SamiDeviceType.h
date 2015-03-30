#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SamiDeviceType : SWGObject

@property(nonatomic) NSString* _id;  
@property(nonatomic) NSString* uid;  
@property(nonatomic) NSString* name;  
@property(nonatomic) NSNumber* published;  
@property(nonatomic) NSNumber* approved;  
@property(nonatomic) NSNumber* latestVersion;  
@property(nonatomic) NSString* uniqueName;  
- (id) _id: (NSString*) _id
  
       uid: (NSString*) uid
  
       name: (NSString*) name
  
       published: (NSNumber*) published
  
       approved: (NSNumber*) approved
  
       latestVersion: (NSNumber*) latestVersion
  
       uniqueName: (NSString*) uniqueName;
       
- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
