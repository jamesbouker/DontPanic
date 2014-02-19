//
//  ViewController.m
//  Dont Panic
//
//  Created by Jimmy on 2/19/14.
//  Copyright (c) 2014 JimmyBouker. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
    //alloc and init the person object
    //alloc init are usually seen together when creating objects
    person = [[Person alloc] initWithName:@"Tony"];
}

#pragma mark - Actions - AKA 'Event Handlers'

-(IBAction)buttonPressed:(id)sender {
    
    [self.button setTitle:person.name forState:UIControlStateNormal];
    
    
    // Note on Class Methods
    // here UIView is a class name
    // "animateWithDuration: animations:" is a Class method
    // Class methods, like static methods, do not need to be invoked by an instance of a class
    [UIView animateWithDuration:1.0 animations:^{
        
        //set the views backgroundColor property
        self.view.backgroundColor = [self randomColor];
        
        
        //get current screen and ball size
        CGSize size = self.ball.frame.size;
        CGSize screenSize = [self screenSize];
        
        //generate a random position
        float x = [self randomNumber0To1] * (screenSize.width - size.width);
        float y = [self randomNumber0To1] * (screenSize.height - size.height);
        
        //set the UIImageView's new frame property
        self.ball.frame = CGRectMake(x, y, size.width, size.height);
    }];
}

#pragma mark - Random Number and Color

-(UIColor*)randomColor {
    float r = [self randomNumber0To1];
    float g = [self randomNumber0To1];
    float b = [self randomNumber0To1];
    
    //UIColor is class name
    // colorWithRed: green: blue: alpha:
    // is a Class method
    //here alloc is called for us so this is more conveineint
    return [UIColor colorWithRed:r green:g blue:b alpha:1];
    
    //Could also do:
    //return [[UIColor alloc] initWithRed:r green:g blue:b alpha:1];
}

-(float)randomNumber0To1 {
    return (arc4random()%100) / 100.0;
}

#pragma mark - Getting screen size based on orientation


// Instructions on how to change device orientation of simulator
//    Launch Simulator
//    Press 'Command+arrowKey'

-(CGSize)screenSize {
    //get current size in Portrait
    CGSize size = [UIScreen mainScreen].bounds.size;
    
    //if landscape swap width and height
    if(UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation))
        size = CGSizeMake(size.height, size.width);
    
    return size;
}

@end
