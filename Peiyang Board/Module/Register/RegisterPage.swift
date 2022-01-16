//
//  RegisterPage.swift
//  Peiyang Board
//
//  Created by 李子鸣 on 2022/1/16.
//

import SwiftUI

struct RegisterPage: View {
    @State var turnToLogin = false
    @State var register_Success = false
    @State var username = ""
    @State var password = ""
    @State var confirm_password = ""
    @EnvironmentObject var login_Storage : Login_storage
    var body: some View {
        if(!turnToLogin && !register_Success) {
            VStack{
                HStack{
                    Spacer()
                    Image("LoginView_Head")
                        .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 210)
                        .overlay(
                            Text("登陆")
                                .font(.system(size: 32, weight: .bold))
                                .foregroundColor(Color("Blue_Register_Font"))
                                .offset(x: 37, y: 12)
                        )
                        .onTapGesture {
                            toLogin()
                        }
                }
                Spacer()
                RegisterTextField(username: $login_Storage.username, password: $login_Storage.password, confirm_password: $confirm_password)
                    .offset(y: -30)
                HStack {
                    Spacer()
                    Button(action: get_Register){
                        Image("Submit_Login")
                            .frame(width: 98, height: 45)
                            .overlay(
                                Text("提交")
                                    .font(.system(size: 30,weight: .bold))
                                    .foregroundColor(Color("Blue_Register_Font"))
                                    .offset(y: -3)
                            )
                            
                    }
                    .offset(x:-33)
                }
                Image("LoginView_Foot")
                
            }
            .ignoresSafeArea(.all)
            .frame(height: UIScreen.main.bounds.height)
        } else if (turnToLogin)
        {
            LoginPage()
                .environmentObject(Login_storage())
        }   else if (!turnToLogin && register_Success){
            Main_Page()
        }
    }
    
    func toLogin() {
        withAnimation(.easeIn(duration: 0.0)){
            turnToLogin.toggle()
            }
    }
    
    func get_Register(){
        login_Storage.username = self.username
        login_Storage.password = self.password
        var result = true
        if result{
            withAnimation(.easeInOut(duration: 0.5)){
                register_Success = true
            }
        }
        print(login_Storage.username)
    }
}

struct RegisterPage_Previews: PreviewProvider {
    static var previews: some View {
        RegisterPage()
    }
}
