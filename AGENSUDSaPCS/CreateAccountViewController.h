//
//  CreateAccountViewController.h
//  AGENSUDSaPCS
//
//  Created by Andrew Easton on 06/10/2014.
//  Copyright (c) 2014 IOS7Course-age. All rights reserved.
//

#import <UIKit/UIKit.h>


#define USER_NAME @"Username"
#define USER_PASSWORD @"Password"


@protocol CreateAccountViewControllerDelegate <NSObject>

-(void)didCancel;
-(void)didCreateAccount;

@end


@interface CreateAccountViewController : UIViewController

@property (weak, nonatomic) id <CreateAccountViewControllerDelegate> delegate; // conforming to the protocol (set the instance of createAccountViewContollers delegate property = self in signInViewContoller)  variable delegate


@property (strong, nonatomic) IBOutlet UITextField *userNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (strong, nonatomic) IBOutlet UITextField *confirmPasswordTextField;

- (IBAction)createAccountButtonPressed:(UIButton *)sender;
- (IBAction)cancelButtonPressed:(UIButton *)sender;





@end
