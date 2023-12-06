//
//  ContentView.swift
//  login
//
//  Created by 吴坤城 on 12/6/23.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var showAlert = false
    @State private var loggedIn = false

    var body: some View {
        if loggedIn {
            MainView()
        }
        else {
            VStack {
                Text("请输入账号密码登陆")
                    .padding(.bottom,20)
                Spacer()
                TextField("Username", text: $username)
                    .padding([.leading,.trailing],50)
                SecureField("Password", text: $password)
                    .padding([.leading,.trailing],50)
                Button(action: {
                    if LoginBridge.validateLogin(withUsername: username, password: password) {
                        loggedIn = true
                    } else {
                        showAlert = true
                    }
                }) {
                    Text("登陆")
                }
                .padding(.top,30)
                .alert(isPresented: $showAlert) {
                    Alert(title: Text("错误"), message: Text("账号或密码错误"), dismissButton: .default(Text("OK")))
                }
                
            }
            .frame(maxWidth: 300,maxHeight: 100)
            .frame(minWidth: 300,minHeight: 250)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
    
}
