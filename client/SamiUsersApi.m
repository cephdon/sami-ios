#import "SamiUsersApi.h"
#import "SWGFile.h"
#import "SWGApiClient.h"
#import "SamiUserEnvelope.h"
#import "SamiDevicesEnvelope.h"
#import "SamiDeviceTypesEnvelope.h"
#import "SamiPropertiesEnvelope.h"
#import "SamiAppProperties.h"



@implementation SamiUsersApi
static NSString * basePath = @"https://api.samsungsami.io/v1.1";

+(SamiUsersApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static SamiUsersApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[SamiUsersApi alloc] init];
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


-(NSNumber*) selfWithCompletionBlock: 
        (void (^)(SamiUserEnvelope* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/users/self", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    bodyDictionary = [[NSMutableArray alloc] init];

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init]; 

    
    [bodyDictionary addObject:formParams];
    

    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    
    
    
        
    // comples response type
    return [client dictionary: requestUrl 
                       method: @"GET" 
                  queryParams: queryParams 
                         body: bodyDictionary 
                 headerParams: headerParams
           requestContentType: requestContentType
          responseContentType: responseContentType
              completionBlock: ^(NSDictionary *data, NSError *error) {
                if (error) {
                    completionBlock(nil, error);
                    
                    return;
                }
                
                SamiUserEnvelope *result = nil;
                if (data) {
                    result = [[SamiUserEnvelope    alloc]initWithValues: data];
                }
                completionBlock(result , nil);
                
              }];
    
    
}

-(NSNumber*) getUserDevicesWithCompletionBlock: (NSNumber*) offset
         count: (NSNumber*) count
         includeProperties: (NSNumber*) includeProperties
         userId: (NSString*) userId
        
        completionHandler: (void (^)(SamiDevicesEnvelope* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/users/{userId}/devices", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"userId", @"}"]] withString: [SWGApiClient escape:userId]];
    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(offset != nil)
        queryParams[@"offset"] = offset;
    if(count != nil)
        queryParams[@"count"] = count;
    if(includeProperties != nil)
        queryParams[@"includeProperties"] = includeProperties;
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    bodyDictionary = [[NSMutableArray alloc] init];

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init]; 

    
    [bodyDictionary addObject:formParams];
    

    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    
    
    
        
    // comples response type
    return [client dictionary: requestUrl 
                       method: @"GET" 
                  queryParams: queryParams 
                         body: bodyDictionary 
                 headerParams: headerParams
           requestContentType: requestContentType
          responseContentType: responseContentType
              completionBlock: ^(NSDictionary *data, NSError *error) {
                if (error) {
                    completionBlock(nil, error);
                    
                    return;
                }
                
                SamiDevicesEnvelope *result = nil;
                if (data) {
                    result = [[SamiDevicesEnvelope    alloc]initWithValues: data];
                }
                completionBlock(result , nil);
                
              }];
    
    
}

-(NSNumber*) getUserDeviceTypesWithCompletionBlock: (NSNumber*) offset
         count: (NSNumber*) count
         includeShared: (NSNumber*) includeShared
         userId: (NSString*) userId
        
        completionHandler: (void (^)(SamiDeviceTypesEnvelope* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/users/{userId}/devicetypes", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"userId", @"}"]] withString: [SWGApiClient escape:userId]];
    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(offset != nil)
        queryParams[@"offset"] = offset;
    if(count != nil)
        queryParams[@"count"] = count;
    if(includeShared != nil)
        queryParams[@"includeShared"] = includeShared;
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    bodyDictionary = [[NSMutableArray alloc] init];

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init]; 

    
    [bodyDictionary addObject:formParams];
    

    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    
    
    
        
    // comples response type
    return [client dictionary: requestUrl 
                       method: @"GET" 
                  queryParams: queryParams 
                         body: bodyDictionary 
                 headerParams: headerParams
           requestContentType: requestContentType
          responseContentType: responseContentType
              completionBlock: ^(NSDictionary *data, NSError *error) {
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

-(NSNumber*) getUserPropertiesWithCompletionBlock: (NSString*) userId
         aid: (NSString*) aid
        
        completionHandler: (void (^)(SamiPropertiesEnvelope* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/users/{userId}/properties", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"userId", @"}"]] withString: [SWGApiClient escape:userId]];
    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(aid != nil)
        queryParams[@"aid"] = aid;
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    bodyDictionary = [[NSMutableArray alloc] init];

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init]; 

    
    [bodyDictionary addObject:formParams];
    

    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    
    
    
        
    // comples response type
    return [client dictionary: requestUrl 
                       method: @"GET" 
                  queryParams: queryParams 
                         body: bodyDictionary 
                 headerParams: headerParams
           requestContentType: requestContentType
          responseContentType: responseContentType
              completionBlock: ^(NSDictionary *data, NSError *error) {
                if (error) {
                    completionBlock(nil, error);
                    
                    return;
                }
                
                SamiPropertiesEnvelope *result = nil;
                if (data) {
                    result = [[SamiPropertiesEnvelope    alloc]initWithValues: data];
                }
                completionBlock(result , nil);
                
              }];
    
    
}

-(NSNumber*) updateUserPropertiesWithCompletionBlock: (NSString*) userId
         aid: (NSString*) aid
         properties: (SamiAppProperties*) properties
        
        completionHandler: (void (^)(SamiPropertiesEnvelope* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/users/{userId}/properties", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"userId", @"}"]] withString: [SWGApiClient escape:userId]];
    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(aid != nil)
        queryParams[@"aid"] = aid;
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    id __body = properties;

    if(__body != nil && [__body isKindOfClass:[NSArray class]]){
        NSMutableArray * objs = [[NSMutableArray alloc] init];
        for (id dict in (NSArray*)__body) {
            if([dict respondsToSelector:@selector(asDictionary)]) {
                [objs addObject:[(SWGObject*)dict asDictionary]];
            }
            else{
                [objs addObject:dict];
            }
        }
        bodyDictionary = objs;
    }
    else if([__body respondsToSelector:@selector(asDictionary)]) {
        bodyDictionary = [(SWGObject*)__body asDictionary];
    }
    else if([__body isKindOfClass:[NSString class]]) {
        // convert it to a dictionary
        NSError * error;
        NSString * str = (NSString*)__body;
        NSDictionary *JSON =
            [NSJSONSerialization JSONObjectWithData: [str dataUsingEncoding: NSUTF8StringEncoding]
                                            options: NSJSONReadingMutableContainers
                                              error: &error];
        bodyDictionary = JSON;
    }
    
    

    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    
    
    
        
    // comples response type
    return [client dictionary: requestUrl 
                       method: @"PUT" 
                  queryParams: queryParams 
                         body: bodyDictionary 
                 headerParams: headerParams
           requestContentType: requestContentType
          responseContentType: responseContentType
              completionBlock: ^(NSDictionary *data, NSError *error) {
                if (error) {
                    completionBlock(nil, error);
                    
                    return;
                }
                
                SamiPropertiesEnvelope *result = nil;
                if (data) {
                    result = [[SamiPropertiesEnvelope    alloc]initWithValues: data];
                }
                completionBlock(result , nil);
                
              }];
    
    
}

-(NSNumber*) createUserPropertiesWithCompletionBlock: (NSString*) userId
         aid: (NSString*) aid
         properties: (SamiAppProperties*) properties
        
        completionHandler: (void (^)(SamiPropertiesEnvelope* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/users/{userId}/properties", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"userId", @"}"]] withString: [SWGApiClient escape:userId]];
    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(aid != nil)
        queryParams[@"aid"] = aid;
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    id __body = properties;

    if(__body != nil && [__body isKindOfClass:[NSArray class]]){
        NSMutableArray * objs = [[NSMutableArray alloc] init];
        for (id dict in (NSArray*)__body) {
            if([dict respondsToSelector:@selector(asDictionary)]) {
                [objs addObject:[(SWGObject*)dict asDictionary]];
            }
            else{
                [objs addObject:dict];
            }
        }
        bodyDictionary = objs;
    }
    else if([__body respondsToSelector:@selector(asDictionary)]) {
        bodyDictionary = [(SWGObject*)__body asDictionary];
    }
    else if([__body isKindOfClass:[NSString class]]) {
        // convert it to a dictionary
        NSError * error;
        NSString * str = (NSString*)__body;
        NSDictionary *JSON =
            [NSJSONSerialization JSONObjectWithData: [str dataUsingEncoding: NSUTF8StringEncoding]
                                            options: NSJSONReadingMutableContainers
                                              error: &error];
        bodyDictionary = JSON;
    }
    
    

    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    
    
    
        
    // comples response type
    return [client dictionary: requestUrl 
                       method: @"POST" 
                  queryParams: queryParams 
                         body: bodyDictionary 
                 headerParams: headerParams
           requestContentType: requestContentType
          responseContentType: responseContentType
              completionBlock: ^(NSDictionary *data, NSError *error) {
                if (error) {
                    completionBlock(nil, error);
                    
                    return;
                }
                
                SamiPropertiesEnvelope *result = nil;
                if (data) {
                    result = [[SamiPropertiesEnvelope    alloc]initWithValues: data];
                }
                completionBlock(result , nil);
                
              }];
    
    
}

-(NSNumber*) deleteUserPropertiesWithCompletionBlock: (NSString*) userId
         aid: (NSString*) aid
        
        completionHandler: (void (^)(SamiPropertiesEnvelope* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/users/{userId}/properties", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"userId", @"}"]] withString: [SWGApiClient escape:userId]];
    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(aid != nil)
        queryParams[@"aid"] = aid;
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    bodyDictionary = [[NSMutableArray alloc] init];

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init]; 

    
    [bodyDictionary addObject:formParams];
    

    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    
    
    
        
    // comples response type
    return [client dictionary: requestUrl 
                       method: @"DELETE" 
                  queryParams: queryParams 
                         body: bodyDictionary 
                 headerParams: headerParams
           requestContentType: requestContentType
          responseContentType: responseContentType
              completionBlock: ^(NSDictionary *data, NSError *error) {
                if (error) {
                    completionBlock(nil, error);
                    
                    return;
                }
                
                SamiPropertiesEnvelope *result = nil;
                if (data) {
                    result = [[SamiPropertiesEnvelope    alloc]initWithValues: data];
                }
                completionBlock(result , nil);
                
              }];
    
    
}



@end