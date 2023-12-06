//
//  login.cpp
//  login
//
//  Created by 吴坤城 on 12/6/23.
//

#include "login.hpp"
#include <string>
using namespace std;

bool validateLogin(const string& username, const string& password) {
    if (username == "admin" && password == "123456") {
        return true;
    }
    return false;
}

