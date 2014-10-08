//
//  ViewController.m
//  AGENSUDSaPCS
//
//  Created by Andrew Easton on 06/10/2014.
//  Copyright (c) 2014 IOS7Course-age. All rights reserved.
//

#import "ViewController.h"
#import "CreateAccountViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.usernameLabel.text = [[NSUserDefaults standardUserDefaults] objectForKey:USER_NAME];
    self.passwordLabel.text = [[NSUserDefaults standardUserDefaults] objectForKey:USER_PASSWORD];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
