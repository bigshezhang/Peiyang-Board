////
////  NewLoginPage.swift
////  Peiyang Board
////
////  Created by 李子鸣 on 2022/1/17.
////
//
//import SwiftUI
//
//struct NewLoginPage: View {
//    @
//    @State var turnToRegister = false
//    @State var login_Success = false
//    @State var username = ""
//    @State var password = ""
//
//    var body: some View {
//        if(!turnToRegister && !login_Success) {
//            VStack{
//                HStack{
//                    Spacer()
//                    Image("LoginView_Head")
//                }
//                Spacer()
//                NewLoginTextField(username: $username, password: $password)
//                Spacer()
//                Image("LoginView_Foot")
//            }
//            .ignoresSafeArea(.all)
//        }
//          else if turnToRegister {
//                RegisterPage()
//                  .environmentObject(Login_storage())
//        }
//               else if (!turnToRegister && login_Success){
//                    MainView(viewRouter: )
//            }
//    }
//    func toRegister() {
//        withAnimation(.easeIn(duration: 0.0)){
//            turnToRegister.toggle()
////            print(turnToRegister)
//            }
//    }
//    
//    func get_Login(){
//        login_Storage.username = self.username
//        login_Storage.password = self.password
//        let result = true
//        if result{
//            withAnimation(.easeInOut(duration: 0.5)){
//                login_Success = true
//                login_Storage.isneedLogin.toggle()
//            }
//        }
//        print(login_Storage.username!)
//    }
//}
//
//struct NewLoginPage_Previews: PreviewProvider {
//    static var previews: some View {
//        NewLoginPage()
//            .previewDevice("iPhone SE (2nd generation)")
//    }
//}
