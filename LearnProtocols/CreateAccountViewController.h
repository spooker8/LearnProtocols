//
//  CreateAccountViewController.h
//  LearnProtocols
//
//  Created by Anand Kumar on 9/9/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreateAccountViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

@property (weak, nonatomic) IBOutlet UITextField *confirmPasswordTextField;


- (IBAction)createAccountButtonPress:(id)sender;

- (IBAction)cancelButtonPress:(id)sender;


@end
