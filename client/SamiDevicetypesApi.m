#import "SamiDeviceTypesApi.h"
#import "SWGFile.h"
#import "SWGApiClient.h"
#import "SamiDeviceTypesEnvelope.h"
#import "SamiManifestPropertiesEnvelope.h"
#import "SamiDeviceTypeEnvelope.h"
#import "SamiManifestVersionsEnvelope.h"



@implementation SamiDeviceTypesApi
static NSString * basePath = @"https://api.samsungsami.io/v1.1";

+(SamiDeviceTypesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static SamiDeviceTypesApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[SamiDeviceTypesApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(void) setBasePath:(NSString*)path {
    basePath = path;
}

+(NSString*) getBasePath {
    return basePath;
}

-(SWGApiClient*) apiClient {
    return [SWGApiClient sharedClientFromPool:basePath];
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [[self apiClient] setHeaderValue:value forKey:key];
}

-(id) init {
    self = [super init];
    [self apiClient];
    return self;
}

-(void) setHeaderValue:(NSString*) value
           forKey:(NSString*)key {
    [[self apiClient] setHeaderValue:value forKey:key];
}

-(unsigned long) requestQueueSize {
    return [SWGApiClient requestQueueSize];
}


-(NSNumber*) getDeviceTypesWithCompletionBlock:(NSString*) name        
            offset:(NSNumber*) offset        
            count:(NSNumber*) count        
        completionHandler: (void (^)(SamiDeviceTypesEnvelope* output, NSError* error))completionBlock
         {

    id m_body = nil;
    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/devicetypes", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(name != nil)
        queryParams[@"name"] = name;if(offset != nil)
        queryParams[@"offset"] = offset;if(count != nil)
        queryParams[@"count"] = count;
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    

    
    
    
    return [client dictionary:requestUrl 
                              method:@"GET" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);
                            
                            return;
                        }
                        
                        SamiDeviceTypesEnvelope *result = nil;
                        if (data) {
                            result = [[SamiDeviceTypesEnvelope    alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);
                        
                    }];
    

}

-(NSNumber*) getDeviceTypeWithCompletionBlock:(NSString*) deviceTypeId        
        completionHandler: (void (^)(SamiDeviceTypeEnvelope* output, NSError* error))completionBlock
         {

    id m_body = nil;
    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/devicetypes/{deviceTypeId}", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"deviceTypeId", @"}"]] withString: [SWGApiClient escape:deviceTypeId]];
    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    

    
    
    
    return [client dictionary:requestUrl 
                              method:@"GET" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);
                            
                            return;
                        }
                        
                        SamiDeviceTypeEnvelope *result = nil;
                        if (data) {
                            result = [[SamiDeviceTypeEnvelope    alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);
                        
                    }];
    

}

-(NSNumber*) getAvailableManifestVersionsWithCompletionBlock:(NSString*) deviceTypeId        
        completionHandler: (void (^)(SamiManifestVersionsEnvelope* output, NSError* error))completionBlock
         {

    id m_body = nil;
    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/devicetypes/{deviceTypeId}/availablemanifestversions", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"deviceTypeId", @"}"]] withString: [SWGApiClient escape:deviceTypeId]];
    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    

    
    
    
    return [client dictionary:requestUrl 
                              method:@"GET" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);
                            
                            return;
                        }
                        
                        SamiManifestVersionsEnvelope *result = nil;
                        if (data) {
                            result = [[SamiManifestVersionsEnvelope    alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);
                        
                    }];
    

}

-(NSNumber*) getLatestManifestPropertiesWithCompletionBlock:(NSString*) deviceTypeId        
        completionHandler: (void (^)(SamiManifestPropertiesEnvelope* output, NSError* error))completionBlock
         {

    id m_body = nil;
    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/devicetypes/{deviceTypeId}/manifests/latest/properties", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"deviceTypeId", @"}"]] withString: [SWGApiClient escape:deviceTypeId]];
    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    

    
    
    
    return [client dictionary:requestUrl 
                              method:@"GET" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);
                            
                            return;
                        }
                        
                        SamiManifestPropertiesEnvelope *result = nil;
                        if (data) {
                            result = [[SamiManifestPropertiesEnvelope    alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);
                        
                    }];
    

}

-(NSNumber*) getManifestPropertiesWithCompletionBlock:(NSString*) deviceTypeId        
            version:(NSString*) version        
        completionHandler: (void (^)(SamiManifestPropertiesEnvelope* output, NSError* error))completionBlock
         {

    id m_body = nil;
    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/devicetypes/{deviceTypeId}/manifests/{version}/properties", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"deviceTypeId", @"}"]] withString: [SWGApiClient escape:deviceTypeId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"version", @"}"]] withString: [SWGApiClient escape:version]];
    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    

    
    
    
    return [client dictionary:requestUrl 
                              method:@"GET" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);
                            
                            return;
                        }
                        
                        SamiManifestPropertiesEnvelope *result = nil;
                        if (data) {
                            result = [[SamiManifestPropertiesEnvelope    alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);
                        
                    }];
    

}



@end