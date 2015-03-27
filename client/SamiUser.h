#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SamiUser : SWGObject

@property(nonatomic) NSString* _id;  
@property(nonatomic) NSString* name;  
@property(nonatomic) NSString* email;  
@property(nonatomic) NSString* fullName;  
@property(nonatomic) NSString* saIdentity;  
@property(nonatomic) NSNumber* createdOn;  
@property(nonatomic) NSNumber* modifiedOn;  
- (id) _id: (NSString*) _id     
    name: (NSString*) name     
    email: (NSString*) email     
    fullName: (NSString*) fullName     
    saIdentity: (NSString*) saIdentity     
    createdOn: (NSNumber*) createdOn     
    modifiedOn: (NSNumber*) modifiedOn;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
