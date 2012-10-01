//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by Luc on 9/30/12.
//  Copyright (c) 2012 Luc. All rights reserved.
//

#import "HelloWorldViewController.h"

@interface HelloWorldViewController ()

@end

@implementation HelloWorldViewController

@synthesize userName = _userName;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeGreeting:(id)sender {
    self.userName = self.textField.text;
    
    NSString *nameString = self.userName;
    if ([nameString length] == 0) {
        nameString = @"World";
    }

    //NOTE: removing this because the label is too small and i can't make it bigger
    //NOTE: when i try to size the label in the designer it crashes xcode and therefore
    //NOTE: the greeting has to be small. (xcode 4.5 bug)
    //NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", nameString];
    self.label.text = nameString;
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == self.textField){
        [theTextField resignFirstResponder];
    }
    return YES;
}
@end
