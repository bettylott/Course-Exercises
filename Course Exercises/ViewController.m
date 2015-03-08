//
//  ViewController.m
//  Course Exercises
//
//  Created by Lisa Matter on 1/21/15.
//  Copyright (c) 2015 MSSE 650. All rights reserved.
//

#import "ViewController.h"

@interface HelloWorldViewController: UIViewController <UITextFieldDelegate>

@end

@implementation ViewController

@synthesize label=_label;

@synthesize textField=_textField;

- (IBAction)sayHello:(id)sender {
    NSString *nameString=self.textField.text;
    if ([nameString length] == 0){
        nameString = @"World";
    }
    NSString *greeting = [[NSString alloc] initWithFormat: @"Hello, %@!", nameString];
    self.label.text=greeting;
}

-(BOOL)textFieldShouldReturn:(UITextField*)theTextField
{
    
    [theTextField resignFirstResponder];
    return YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
