#import <Foundation/Foundation.h>
#import "SamiDeviceEnvelope.h"
#import "SamiDevice.h"
#import "SamiDeviceTokenEnvelope.h"
#import "SWGObject.h"


@interface SamiDevicesApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(SamiDevicesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 
 
 Create a device
 

 
 @param device Device to be added to the user
 

 return type: SamiDeviceEnvelope*
 */
-(NSNumber*) addDeviceWithCompletionBlock :(SamiDevice*) device 
    
    completionHandler: (void (^)(SamiDeviceEnvelope* output, NSError* error))completionBlock;
    


/**

 
 
 Retrieves a device
 

 
 @param deviceId deviceId
 

 return type: SamiDeviceEnvelope*
 */
-(NSNumber*) getDeviceWithCompletionBlock :(NSString*) deviceId 
    
    completionHandler: (void (^)(SamiDeviceEnvelope* output, NSError* error))completionBlock;
    


/**

 
 
 Updates a device
 

 
 @param deviceId deviceId
 
 @param device Device to be updated
 

 return type: SamiDeviceEnvelope*
 */
-(NSNumber*) updateDeviceWithCompletionBlock :(NSString*) deviceId 
     device:(SamiDevice*) device 
    
    completionHandler: (void (^)(SamiDeviceEnvelope* output, NSError* error))completionBlock;
    


/**

 
 
 Deletes a device
 

 
 @param deviceId deviceId
 

 return type: SamiDeviceEnvelope*
 */
-(NSNumber*) deleteDeviceWithCompletionBlock :(NSString*) deviceId 
    
    completionHandler: (void (^)(SamiDeviceEnvelope* output, NSError* error))completionBlock;
    


/**

 
 
 Retrieves a device's token
 

 
 @param deviceId deviceId
 

 return type: SamiDeviceTokenEnvelope*
 */
-(NSNumber*) getDeviceTokenWithCompletionBlock :(NSString*) deviceId 
    
    completionHandler: (void (^)(SamiDeviceTokenEnvelope* output, NSError* error))completionBlock;
    


/**

 
 
 Updates a device's token
 

 
 @param deviceId deviceId
 

 return type: SamiDeviceTokenEnvelope*
 */
-(NSNumber*) updateDeviceTokenWithCompletionBlock :(NSString*) deviceId 
    
    completionHandler: (void (^)(SamiDeviceTokenEnvelope* output, NSError* error))completionBlock;
    


/**

 
 
 Deletes a device's token
 

 
 @param deviceId deviceId
 

 return type: SamiDeviceTokenEnvelope*
 */
-(NSNumber*) deleteDeviceTokenWithCompletionBlock :(NSString*) deviceId 
    
    completionHandler: (void (^)(SamiDeviceTokenEnvelope* output, NSError* error))completionBlock;
    



@end