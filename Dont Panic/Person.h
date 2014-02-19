//
//  Person.h
//  Dont Panic
//
//  Created by Jimmy on 2/19/14.
//  Copyright (c) 2014 JimmyBouker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    //getters and setters are not generated for 'age'
    int age;
}

//getters and setters are generated for 'name'
@property (nonatomic, strong) NSString *name;

-(id)initWithName:(NSString*)name;
-(id)initWithName:(NSString*)name age:(int)age;

@end
