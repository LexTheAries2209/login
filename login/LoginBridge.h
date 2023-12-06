//
//  LoginBridge.h
//  login
//
//  Created by 吴坤城 on 12/6/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LoginBridge : NSObject

+ (BOOL)validateLoginWithUsername:(NSString *)username password:(NSString *)password;

@end

NS_ASSUME_NONNULL_END
