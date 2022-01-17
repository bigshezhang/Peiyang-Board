//
//  LoginPage.swift
//  Peiyang Board
//
//  Created by 李子鸣 on 2022/1/16.
//

import SwiftUI

struct LoginPage: View {
    @State var turnToRegister = false
    @State var login_Success = false
    @State var username = ""
    @State var password = ""

    var body: some View {
        if(!turnToRegister && !login_Success) {
            VStack{
                HStack{
                    Spacer()
                    Image("LoginView_Head")
                        .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 210)
                        .overlay(
                            Text("注册")
                                .font(.system(size: 32, weight: .bold))
                                .foregroundColor(Color("Blue_Register_Font"))
                                .offset(x: 37, y: 12)
                        )
                        .onTapGesture {
                            toRegister()
                    }
                }
                Spacer()
                
                Group {
                    LoginTextField(username: $username, password: $password)
                    HStack {
                        Spacer()
                        Text("forget your password")
                            .foregroundColor(Color("Blue_Login_Text"))
                            .font(.custom(RTW, size: 17))
                            .offset(x:-35,y:-10)
                            .padding(.bottom, 20)
                    }
                }
                .offset(y: -59.7)
                HStack {
                    Spacer()
                    Button(action: get_Login){
                        Image("Submit_Login")
                            .frame(width: 98, height: 45)
                            .overlay(
                                Text("提交")
                                    .font(.system(size: 30,weight: .bold))
                                    .foregroundColor(Color("Blue_Register_Font"))
                                    .offset(y: -3)
                            )
                    }
                    .offset(x:-33, y:-78)
                }
                Image("LoginView_Foot")
            }
            .ignoresSafeArea(.all)
            .frame(height: UIScreen.main.bounds.height)
        }
          else if turnToRegister {
                RegisterPage()
                  .environmentObject(Login_storage())
        }
               else if (!turnToRegister && login_Success){
                    BaseView()
            }
    }
    func toRegister() {
        withAnimation(.easeIn(duration: 0.0)){
            turnToRegister.toggle()
//            print(turnToRegister)
            }
    }
    
    func get_Login(){
        login_Storage.username = self.username
        login_Storage.password = self.password
        var result = true
        if result{
            withAnimation(.easeInOut(duration: 0.5)){
                login_Success = true
                login_Storage.isneedLogin.toggle()
            }
        }
        print(login_Storage.username)
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}

