//
//  CreateAccountViewController.m
//  LearnProtocols
//
//  Created by Anand Kumar on 9/9/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "CreateAccountViewController.h"

@interface CreateAccountViewController ()

@end

@implementation CreateAccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)createAccountButtonPress:(id)sender {
    
    
    
    if ((self.usernameTextField.text.length !=0) && (self.passwordTextField.text.length !=0)&& [self.passwordTextField.text isEqualToString:self.confirmPasswordTextField.text])
        
    {
        
        [[NSUserDefaults standardUserDefaults] setObject:self.usernameTextField.text forKey:USER_NAME];
        
        [[NSUserDefaults standardUserDefaults] setObject:self.passwordTextField.text forKey:USER_PASSWORD];
        
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        
        
        [self.delegate didCreateAccount];
        
    }
    
    else {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Wrong info" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil];
    
        [alertView show];
    
    }
    
    
}

- (IBAction)cancelButtonPress:(id)sender {
    
    [self.delegate didCancel];
    
}
@end
