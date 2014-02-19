//
//  Person.m
//  Dont Panic
//
//  Created by Jimmy on 2/19/14.
//  Copyright (c) 2014 JimmyBouker. All rights reserved.
//

#import "Person.h"

@implementation Person

//Two sample constructors
//Note the naming convention:
//   initWithName: age: etc: moreStuff:

//return type is 'id'
//id can be thought of as a 'void*'
//it is basically a pointer to a memory address
-(id)initWithName:(NSString*)name {
    self = [super init];
    if(self) {
        self.name = name;
        age = arc4random()%100;
    }
    return self;
}

-(id)initWithName:(NSString*)name age:(int)initAge {
    self = [super init];
    if(self) {
        self.name = name;
        age = initAge;
        
        //You can also access instance variables like so:
        //self->age = initAge;
    }
    return self;
}

@end
