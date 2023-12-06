//
//  LoginBridge.mm
//  login
//
//  Created by 吴坤城 on 12/6/23.
//

#import "LoginBridge.h"
#import "login.hpp"

@implementation LoginBridge

+ (BOOL)validateLoginWithUsername:(NSString *)username password:(NSString *)password {

    std::string stdUsername([username UTF8String]);
    std::string stdPassword([password UTF8String]);
    
    return validateLogin(stdUsername, stdPassword);
}

@end
