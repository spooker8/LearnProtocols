//
//  SignInViewController.h
//  LearnProtocols
//
//  Created by Anand Kumar on 9/9/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignInViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *usernameTextfield;

@property (weak, nonatomic) IBOutlet UITextField *passwordTextfield;

- (IBAction)createAccountBarButtonItemPress:(id)sender;


- (IBAction)loginActionButton:(id)sender;
@end
