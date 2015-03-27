#import "SamiMessagesApi.h"
#import "SWGFile.h"
#import "SWGApiClient.h"
#import "SamiNormalizedMessagesEnvelope.h"
#import "SamiSendMessageActionResponse.h"
#import "SamiSendMessageActionInfo.h"
#import "SamiAggregatesEnvelope.h"
#import "SamiFieldPresenceEnvelope.h"
#import "SamiRawMessagesEnvelope.h"



@implementation SamiMessagesApi
static NSString * basePath = @"https://api.samsungsami.io/v1.1";

+(SamiMessagesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static SamiMessagesApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[SamiMessagesApi alloc] init];
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


-(NSNumber*) getNormalizedMessagesWithCompletionBlock: (NSString*) uid
         sdid: (NSString*) sdid
         mid: (NSString*) mid
         fieldPresence: (NSString*) fieldPresence
         filter: (NSString*) filter
         offset: (NSString*) offset
         count: (NSNumber*) count
         startDate: (NSNumber*) startDate
         endDate: (NSNumber*) endDate
         order: (NSString*) order
        
        completionHandler: (void (^)(SamiNormalizedMessagesEnvelope* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/messages", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(uid != nil)
        queryParams[@"uid"] = uid;
    if(sdid != nil)
        queryParams[@"sdid"] = sdid;
    if(mid != nil)
        queryParams[@"mid"] = mid;
    if(fieldPresence != nil)
        queryParams[@"fieldPresence"] = fieldPresence;
    if(filter != nil)
        queryParams[@"filter"] = filter;
    if(offset != nil)
        queryParams[@"offset"] = offset;
    if(count != nil)
        queryParams[@"count"] = count;
    if(startDate != nil)
        queryParams[@"startDate"] = startDate;
    if(endDate != nil)
        queryParams[@"endDate"] = endDate;
    if(order != nil)
        queryParams[@"order"] = order;
    
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
                
                SamiNormalizedMessagesEnvelope *result = nil;
                if (data) {
                    result = [[SamiNormalizedMessagesEnvelope    alloc]initWithValues: data];
                }
                completionBlock(result , nil);
                
              }];
    
    
}

-(NSNumber*) sendMessageActionWithCompletionBlock: (SamiSendMessageActionInfo*) data
        
        completionHandler: (void (^)(SamiSendMessageActionResponse* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/messages", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    id __body = data;

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
                
                SamiSendMessageActionResponse *result = nil;
                if (data) {
                    result = [[SamiSendMessageActionResponse    alloc]initWithValues: data];
                }
                completionBlock(result , nil);
                
              }];
    
    
}

-(NSNumber*) getMessageAggregatesWithCompletionBlock: (NSString*) sdid
         field: (NSString*) field
         startDate: (NSNumber*) startDate
         endDate: (NSNumber*) endDate
        
        completionHandler: (void (^)(SamiAggregatesEnvelope* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/messages/analytics/aggregates", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(sdid != nil)
        queryParams[@"sdid"] = sdid;
    if(field != nil)
        queryParams[@"field"] = field;
    if(startDate != nil)
        queryParams[@"startDate"] = startDate;
    if(endDate != nil)
        queryParams[@"endDate"] = endDate;
    
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
                
                SamiAggregatesEnvelope *result = nil;
                if (data) {
                    result = [[SamiAggregatesEnvelope    alloc]initWithValues: data];
                }
                completionBlock(result , nil);
                
              }];
    
    
}

-(NSNumber*) getLastNormalizedMessagesWithCompletionBlock: (NSNumber*) count
         sdids: (NSString*) sdids
         fieldPresence: (NSString*) fieldPresence
        
        completionHandler: (void (^)(SamiNormalizedMessagesEnvelope* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/messages/last", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(count != nil)
        queryParams[@"count"] = count;
    if(sdids != nil)
        queryParams[@"sdids"] = sdids;
    if(fieldPresence != nil)
        queryParams[@"fieldPresence"] = fieldPresence;
    
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
                
                SamiNormalizedMessagesEnvelope *result = nil;
                if (data) {
                    result = [[SamiNormalizedMessagesEnvelope    alloc]initWithValues: data];
                }
                completionBlock(result , nil);
                
              }];
    
    
}

-(NSNumber*) getFieldPresenceWithCompletionBlock: (NSString*) sdid
         fieldPresence: (NSString*) fieldPresence
         startDate: (NSNumber*) startDate
         endDate: (NSNumber*) endDate
         interval: (NSString*) interval
        
        completionHandler: (void (^)(SamiFieldPresenceEnvelope* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/messages/presence", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(sdid != nil)
        queryParams[@"sdid"] = sdid;
    if(fieldPresence != nil)
        queryParams[@"fieldPresence"] = fieldPresence;
    if(startDate != nil)
        queryParams[@"startDate"] = startDate;
    if(endDate != nil)
        queryParams[@"endDate"] = endDate;
    if(interval != nil)
        queryParams[@"interval"] = interval;
    
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
                
                SamiFieldPresenceEnvelope *result = nil;
                if (data) {
                    result = [[SamiFieldPresenceEnvelope    alloc]initWithValues: data];
                }
                completionBlock(result , nil);
                
              }];
    
    
}

-(NSNumber*) getRawMessagesWithCompletionBlock: (NSString*) sdid
         ddid: (NSString*) ddid
         offset: (NSString*) offset
         count: (NSNumber*) count
         startDate: (NSNumber*) startDate
         endDate: (NSNumber*) endDate
         order: (NSString*) order
        
        completionHandler: (void (^)(SamiRawMessagesEnvelope* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/messages/raw", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(sdid != nil)
        queryParams[@"sdid"] = sdid;
    if(ddid != nil)
        queryParams[@"ddid"] = ddid;
    if(offset != nil)
        queryParams[@"offset"] = offset;
    if(count != nil)
        queryParams[@"count"] = count;
    if(startDate != nil)
        queryParams[@"startDate"] = startDate;
    if(endDate != nil)
        queryParams[@"endDate"] = endDate;
    if(order != nil)
        queryParams[@"order"] = order;
    
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
                
                SamiRawMessagesEnvelope *result = nil;
                if (data) {
                    result = [[SamiRawMessagesEnvelope    alloc]initWithValues: data];
                }
                completionBlock(result , nil);
                
              }];
    
    
}



@end