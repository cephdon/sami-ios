#import <Foundation/Foundation.h>
#import "SamiDeviceTypesEnvelope.h"
#import "SamiDeviceTypeEnvelope.h"
#import "SamiManifestVersionsEnvelope.h"
#import "SamiManifestPropertiesEnvelope.h"
#import "SWGObject.h"


@interface SamiDeviceTypesApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(SamiDeviceTypesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 
 
 Retrieves Device Types
 

 
 @param name Device Type name
 
 @param offset Offset for pagination.
 
 @param count Desired count of items in the result set
 

 return type: SamiDeviceTypesEnvelope*
 */
-(NSNumber*) getDeviceTypesWithCompletionBlock :(NSString*) name 
     offset:(NSNumber*) offset 
     count:(NSNumber*) count 
    
    completionHandler: (void (^)(SamiDeviceTypesEnvelope* output, NSError* error))completionBlock;
    


/**

 
 
 Retrieves a Device Type
 

 
 @param deviceTypeId deviceTypeId
 

 return type: SamiDeviceTypeEnvelope*
 */
-(NSNumber*) getDeviceTypeWithCompletionBlock :(NSString*) deviceTypeId 
    
    completionHandler: (void (^)(SamiDeviceTypeEnvelope* output, NSError* error))completionBlock;
    


/**

 
 
 Get a Device Type's available manifest versions
 

 
 @param deviceTypeId deviceTypeId
 

 return type: SamiManifestVersionsEnvelope*
 */
-(NSNumber*) getAvailableManifestVersionsWithCompletionBlock :(NSString*) deviceTypeId 
    
    completionHandler: (void (^)(SamiManifestVersionsEnvelope* output, NSError* error))completionBlock;
    


/**

 
 
 Get a Device Type's manifest properties for the latest version.
 

 
 @param deviceTypeId Device Type ID.
 

 return type: SamiManifestPropertiesEnvelope*
 */
-(NSNumber*) getLatestManifestPropertiesWithCompletionBlock :(NSString*) deviceTypeId 
    
    completionHandler: (void (^)(SamiManifestPropertiesEnvelope* output, NSError* error))completionBlock;
    


/**

 
 
 Get a Device Type's manifest properties for a specific version.
 

 
 @param deviceTypeId Device Type ID.
 
 @param version Manifest Version.
 

 return type: SamiManifestPropertiesEnvelope*
 */
-(NSNumber*) getManifestPropertiesWithCompletionBlock :(NSString*) deviceTypeId 
     version:(NSString*) version 
    
    completionHandler: (void (^)(SamiManifestPropertiesEnvelope* output, NSError* error))completionBlock;
    



@end