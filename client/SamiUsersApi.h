#import <Foundation/Foundation.h>
#import "SamiUserEnvelope.h"
#import "SamiDevicesEnvelope.h"
#import "SamiDeviceTypesEnvelope.h"
#import "SamiPropertiesEnvelope.h"
#import "SamiAppProperties.h"
#import "SWGObject.h"


@interface SamiUsersApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(SamiUsersApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 
 
 Get's the current user's profile
 

 

 return type: SamiUserEnvelope*
 */
-(NSNumber*) selfWithCompletionBlock :
    (void (^)(SamiUserEnvelope* output, NSError* error))completionBlock;
    


/**

 
 
 Retrieve User's Devices
 

 
 @param offset Offset for pagination.
 
 @param count Desired count of items in the result set
 
 @param includeProperties Optional. Boolean (true/false) - If false, only return the user&#39;s device types. If true, also return device types shared by other users.
 
 @param userId User ID
 

 return type: SamiDevicesEnvelope*
 */
-(NSNumber*) getUserDevicesWithCompletionBlock :(NSNumber*) offset 
     count:(NSNumber*) count 
     includeProperties:(NSNumber*) includeProperties 
     userId:(NSString*) userId 
    
    completionHandler: (void (^)(SamiDevicesEnvelope* output, NSError* error))completionBlock;
    


/**

 
 
 Retrieve User's Device Types
 

 
 @param offset Offset for pagination.
 
 @param count Desired count of items in the result set
 
 @param includeShared Optional. Boolean (true/false) - If false, only return the user&#39;s device types. If true, also return device types shared by other users.
 
 @param userId User ID.
 

 return type: SamiDeviceTypesEnvelope*
 */
-(NSNumber*) getUserDeviceTypesWithCompletionBlock :(NSNumber*) offset 
     count:(NSNumber*) count 
     includeShared:(NSNumber*) includeShared 
     userId:(NSString*) userId 
    
    completionHandler: (void (^)(SamiDeviceTypesEnvelope* output, NSError* error))completionBlock;
    


/**

 
 
 Get application properties of a user
 

 
 @param userId User Id
 
 @param aid Application ID
 

 return type: SamiPropertiesEnvelope*
 */
-(NSNumber*) getUserPropertiesWithCompletionBlock :(NSString*) userId 
     aid:(NSString*) aid 
    
    completionHandler: (void (^)(SamiPropertiesEnvelope* output, NSError* error))completionBlock;
    


/**

 
 
 Updates application properties of a user
 

 
 @param userId User Id
 
 @param aid Application ID
 
 @param properties Properties to be updated
 

 return type: SamiPropertiesEnvelope*
 */
-(NSNumber*) updateUserPropertiesWithCompletionBlock :(NSString*) userId 
     aid:(NSString*) aid 
     properties:(SamiAppProperties*) properties 
    
    completionHandler: (void (^)(SamiPropertiesEnvelope* output, NSError* error))completionBlock;
    


/**

 
 
 Create application properties for a user
 

 
 @param userId User Id
 
 @param aid Application ID
 
 @param properties Properties to be updated
 

 return type: SamiPropertiesEnvelope*
 */
-(NSNumber*) createUserPropertiesWithCompletionBlock :(NSString*) userId 
     aid:(NSString*) aid 
     properties:(SamiAppProperties*) properties 
    
    completionHandler: (void (^)(SamiPropertiesEnvelope* output, NSError* error))completionBlock;
    


/**

 
 
 Deletes a users properties
 

 
 @param userId User Id
 
 @param aid Application ID
 

 return type: SamiPropertiesEnvelope*
 */
-(NSNumber*) deleteUserPropertiesWithCompletionBlock :(NSString*) userId 
     aid:(NSString*) aid 
    
    completionHandler: (void (^)(SamiPropertiesEnvelope* output, NSError* error))completionBlock;
    



@end