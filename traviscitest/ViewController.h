//
//  ViewController.h
//  traviscitest
//
//  Created by Thiago Delmotte on 13/01/16.
//  Copyright © 2016 Thiago Delmotte. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UITextField *userField;
@property (nonatomic, weak) IBOutlet UITextField *pwdField;
@property (nonatomic, weak) IBOutlet UILabel *errorLbl;

@end

