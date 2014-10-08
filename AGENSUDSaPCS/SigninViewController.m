//
//  SigninViewController.m
//  AGENSUDSaPCS
//
//  Created by Andrew Easton on 06/10/2014.
//  Copyright (c) 2014 IOS7Course-age. All rights reserved.
//

#import "SigninViewController.h"

@interface SigninViewController ()

@end

@implementation SigninViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.destinationViewController isKindOfClass:[CreateAccountViewController class]]) {
        
        CreateAccountViewController *createAccountVC = segue.destinationViewController;
        createAccountVC.delegate = self;
        
    }
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)createAccountBarButtonPressed:(UIBarButtonItem *)sender {
    
    [self performSegueWithIdentifier:@"toCreateAccountViewControllerSegue" sender:sender]; // prepare with segue before the segue occurs, it has an argument sender (UIBarButtonItem *) sender  - pass sender which is UIBarButtonItem
    
}


- (IBAction)loginButtonPressed:(UIButton *)sender {
    
    NSString *username = [[NSUserDefaults standardUserDefaults] objectForKey: USER_NAME];
    NSString *password = [[NSUserDefaults standardUserDefaults] objectForKey: USER_PASSWORD];
    
    if ([self.usernameTextField.text isEqualToString:username] && [self.passwordTextField.text isEqualToString:password]){
         [self performSegueWithIdentifier:@"toViewControllerSegue" sender:sender];
        
    }else {
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message: @"Username or password combination does not work" delegate: nil cancelButtonTitle: @"Ok" otherButtonTitles: nil];
        [alertView show];
    }
    
    [self performSegueWithIdentifier:@"toViewControllerSegue" sender:sender]; // prepare with segue before the segue occurs, notice here the sender is passing as an argument the (UIButton *) sender.
}

#pragma mark - createAccountViewController Delegate

-(void)didCancel;
{
    [self dismissViewControllerAnimated:YES completion:nil]; //viewcontroller will be dismiss so i can see signinviewcontroller
    
    
}

-(void)didCreateAccount;
{
    
    [self dismissViewControllerAnimated:YES completion:nil]; //viewcontroller will be dismissed so i can see singinviewcontroller
    
}


@end
