#import "SWGDate.h"
#import "SamiUser.h"

@implementation SamiUser

-(id)_id: (NSString*) _id
    name: (NSString*) name
    email: (NSString*) email
    fullName: (NSString*) fullName
    saIdentity: (NSString*) saIdentity
    createdOn: (NSNumber*) createdOn
    modifiedOn: (NSNumber*) modifiedOn
    
{
    __id = _id;
    _name = name;
    _email = email;
    _fullName = fullName;
    _saIdentity = saIdentity;
    _createdOn = createdOn;
    _modifiedOn = modifiedOn;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        __id = dict[@"id"];
        
        _name = dict[@"name"];
        
        _email = dict[@"email"];
        
        _fullName = dict[@"fullName"];
        
        _saIdentity = dict[@"saIdentity"];
        
        _createdOn = dict[@"createdOn"];
        
        _modifiedOn = dict[@"modifiedOn"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(__id != nil) dict[@"id"] = __id ;
        
    
    
            if(_name != nil) dict[@"name"] = _name ;
        
    
    
            if(_email != nil) dict[@"email"] = _email ;
        
    
    
            if(_fullName != nil) dict[@"fullName"] = _fullName ;
        
    
    
            if(_saIdentity != nil) dict[@"saIdentity"] = _saIdentity ;
        
    
    
            if(_createdOn != nil) dict[@"createdOn"] = _createdOn ;
        
    
    
            if(_modifiedOn != nil) dict[@"modifiedOn"] = _modifiedOn ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end
