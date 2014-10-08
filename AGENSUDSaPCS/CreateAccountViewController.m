//
//  CreateAccountViewController.m
//  AGENSUDSaPCS
//
//  Created by Andrew Easton on 06/10/2014.
//  Copyright (c) 2014 IOS7Course-age. All rights reserved.
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

- (IBAction)createAccountButtonPressed:(UIButton *)sender
{
    
    if ((self.userNameTextField.text.length != 0) && (self.passwordTextField.text.length != 0) && [self.passwordTextField.text isEqualToString:self.confirmPasswordTextField.text]) {
        
        [[NSUserDefaults standardUserDefaults] setObject:self.userNameTextField.text forKey:USER_NAME];
        [[NSUserDefaults standardUserDefaults] setObject:self.passwordTextField.text forKey:USER_PASSWORD];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        [self.delegate didCreateAccount];
        
    }
    else {
        UIAlertView *alertview = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Information not entered correctly" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alertview show];
        
    }
    
}

- (IBAction)cancelButtonPressed:(UIButton *)sender {
    
    [self.delegate didCancel];
}

@end