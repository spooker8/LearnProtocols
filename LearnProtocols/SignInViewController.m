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

- (IBAction)createAccountBarButtonItemPress:(id)sender {
    
    
    [self performSegueWithIdentifier:@"toCreateAccountViewControllerSegue" sender:sender];
    
    
}

- (IBAction)loginActionButton:(id)sender {
    
    
    [self performSegueWithIdentifier:@"toViewControllerSegue" sender:sender];
    
}
@end
