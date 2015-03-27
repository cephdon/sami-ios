#import "SamiExportApi.h"
#import "SWGFile.h"
#import "SWGApiClient.h"
#import "SamiExportRequestResponse.h"
#import "SamiExportRequestInfo.h"
#import "SamiExportHistoryResponse.h"
#import "SamiExportStatusResponse.h"



@implementation SamiExportApi
static NSString * basePath = @"https://api.samsungsami.io/v1.1";

+(SamiExportApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static SamiExportApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[SamiExportApi alloc] init];
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


-(NSNumber*) exportRequestWithCompletionBlock: (SamiExportRequestInfo*) exportRequestInfo
        
        completionHandler: (void (^)(SamiExportRequestResponse* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/messages/export", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    id __body = exportRequestInfo;

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
                
                SamiExportRequestResponse *result = nil;
                if (data) {
                    result = [[SamiExportRequestResponse    alloc]initWithValues: data];
                }
                completionBlock(result , nil);
                
              }];
    
    
}

-(NSNumber*) getExportHistoryWithCompletionBlock: (NSString*) trialId
         count: (NSNumber*) count
         offset: (NSNumber*) offset
        
        completionHandler: (void (^)(SamiExportHistoryResponse* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/messages/export/history", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(trialId != nil)
        queryParams[@"trialId"] = trialId;
    if(count != nil)
        queryParams[@"count"] = count;
    if(offset != nil)
        queryParams[@"offset"] = offset;
    
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
                
                SamiExportHistoryResponse *result = nil;
                if (data) {
                    result = [[SamiExportHistoryResponse    alloc]initWithValues: data];
                }
                completionBlock(result , nil);
                
              }];
    
    
}

-(NSNumber*) getExportResultWithCompletionBlock: (NSString*) exportId
        
        completionHandler: (void (^)(NSString* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/messages/export/{exportId}/result", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"exportId", @"}"]] withString: [SWGApiClient escape:exportId]];
    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    bodyDictionary = [[NSMutableArray alloc] init];

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init]; 

    
    [bodyDictionary addObject:formParams];
    

    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    
    
            // primitive response type
    return [client stringWithCompletionBlock: requestUrl 
                                              method: @"GET" 
                                         queryParams: queryParams 
                                                body: bodyDictionary 
                                        headerParams: headerParams
                                  requestContentType: requestContentType
                                 responseContentType: responseContentType
                                     completionBlock: ^(NSString *data, NSError *error) {
                         if (error) {
                             completionBlock(nil, error);
                             return;
                         }
                        NSString *result = data ? [[NSString  alloc]initWithString: data] : nil;
                        completionBlock(result, nil);
                     }];
    
    
    
        
    
}

-(NSNumber*) getExportStatusWithCompletionBlock: (NSString*) exportId
        
        completionHandler: (void (^)(SamiExportStatusResponse* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/messages/export/{exportId}/status", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"exportId", @"}"]] withString: [SWGApiClient escape:exportId]];
    

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
                
                SamiExportStatusResponse *result = nil;
                if (data) {
                    result = [[SamiExportStatusResponse    alloc]initWithValues: data];
                }
                completionBlock(result , nil);
                
              }];
    
    
}



@end