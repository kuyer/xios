//
//  LoginViewController.m
//  xios
//
//  Created by rory.zhang on 17/3/3.
//  Copyright © 2017年 rory.zhang. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _accountEdit = [[UITextField alloc] init];
    _accountEdit.frame = CGRectMake(10, 50, self.view.frame.size.width-20, 40);
    _accountEdit.placeholder = @"请输入帐号";
    _accountEdit.borderStyle = UITextBorderStyleRoundedRect;
    
    _passwordEdit = [[UITextField alloc] init];
    _passwordEdit.frame = CGRectMake(10, 100, self.view.frame.size.width-20, 40);
    _passwordEdit.placeholder = @"请输入密码";
    _passwordEdit.borderStyle = UITextBorderStyleRoundedRect;
    _passwordEdit.secureTextEntry = YES;
    
    _loginBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _loginBtn.frame = CGRectMake(10, 150, self.view.frame.size.width-20, 40);
    [_loginBtn setTitle:@"登录" forState:UIControlStateNormal];
    [_loginBtn addTarget:self action:@selector(doLogin) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_accountEdit];
    [self.view addSubview:_passwordEdit];
    [self.view addSubview:_loginBtn];
}

- (void) doLogin {
    NSString *account = _accountEdit.text;
    NSString *password = _passwordEdit.text;
    if([account isEqualToString:@"kuyer"] && [password isEqualToString:@"coolor"]) {
        NSLog(@"login success.");
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"登录成功" delegate:nil cancelButtonTitle:@"关闭" otherButtonTitles: nil];
        [alert show];
    } else {
        NSLog(@"login error.");
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"帐号或密码错误" delegate:nil cancelButtonTitle:@"关闭" otherButtonTitles: nil];
        [alert show];
    }
}

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_accountEdit resignFirstResponder];
    [_passwordEdit resignFirstResponder];
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

@end
