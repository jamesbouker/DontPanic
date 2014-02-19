//
//  ViewController.h
//  Dont Panic
//
//  Created by Jimmy on 2/19/14.
//  Copyright (c) 2014 JimmyBouker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

@interface ViewController : UIViewController {
    Person *person;
}


//IBOutlet is used by storyboards
@property (nonatomic, strong) IBOutlet UIImageView *ball;
@property (nonatomic, strong) IBOutlet UIButton *button;


//note: here we could have created a Person property if we wanted to
//note how there is not IBOutlet

//@property (nonatomic, strong) Person *person;

//IBAction is a typedef of void.
//It is used by the storyboard to find what methods can be triggered by UI Events
-(IBAction)buttonPressed:(id)sender;

@end
