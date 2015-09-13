//
//  SignInViewController.m
//  LearnProtocols
//
//  Created by Anand Kumar on 9/9/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "SignInViewController.h"

@interface SignInViewController ()

@end

@implementation SignInViewController

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


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.destinationViewController isKindOfClass:[CreateAccountViewController class]] )
    {
        CreateAccountViewController *createAccountVC = segue.destinationViewController;
        createAccountVC.delegate = self;
        
        
    }
    
    
}


- (IBAction)createAccountBarButtonItemPress:(id)sender {
    
    
    [self performSegueWithIdentifier:@"toCreateAccountViewControllerSegue" sender:sender];
    
    
}

- (IBAction)loginActionButton:(id)sender {
    
    
   
 
    NSString *username = [[NSUserDefaults standardUserDefaults] objectForKey:USER_NAME];
    NSString *password = [[NSUserDefaults standardUserDefaults] objectForKey:USER_PASSWORD];
    
    if ([self.usernameTextfield.text isEqualToString:username] && [self.passwordTextfield.text isEqualToString:password]){
        
        [self performSegueWithIdentifier:@"toViewControllerSegue" sender:sender];
    }
    
    else {
        UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Error" message:@"Username" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        
        [alertView show];
        
        
    }
    
    
}



#pragma mark - create account controller delegage

-(void)didCancel
{
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}


-(void)didCreateAccount
{
    
     [self dismissViewControllerAnimated:YES completion:nil];
    
    
}




@end
