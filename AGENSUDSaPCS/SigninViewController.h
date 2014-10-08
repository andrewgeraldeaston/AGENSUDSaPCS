//
//  SigninViewController.h
//  AGENSUDSaPCS
//
//  Created by Andrew Easton on 06/10/2014.
//  Copyright (c) 2014 IOS7Course-age. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CreateAccountViewController.h"


@interface SigninViewController : UIViewController<CreateAccountViewControllerDelegate>;   //conforming to the protocol. we now can get access to the methods we defined in the protocol in createAccountControllerViewController and we can implementation file in signInViewContoller

@property (strong, nonatomic) IBOutlet UITextField *usernameTextField;

@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;

- (IBAction)createAccountBarButtonPressed:(UIBarButtonItem *)sender;

- (IBAction)loginButtonPressed:(UIButton *)sender;



@end
