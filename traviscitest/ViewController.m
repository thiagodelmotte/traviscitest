//
//  ViewController.m
//  traviscitest
//
//  Created by Thiago Delmotte on 13/01/16.
//  Copyright © 2016 Thiago Delmotte. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self cleanErrorMsg];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)login:(id)sender {
    
    if (self.userField.text.length == 0) {
        self.errorLbl.text = @"Usuário incorreto!";
        [self.userField becomeFirstResponder];
    } else if (self.pwdField.text.length == 0) {
        self.errorLbl.text = @"Senha incorreta!";
        [self.pwdField becomeFirstResponder];
    } else {
        [self cleanErrorMsg];
        [self performSegueWithIdentifier:@"home" sender:self];
    }
    
}

- (void)cleanErrorMsg {
    self.errorLbl.text = @"";
}

@end
