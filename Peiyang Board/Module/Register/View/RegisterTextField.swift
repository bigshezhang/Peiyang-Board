//
//  RegisterTextField.swift
//  Peiyang Board
//
//  Created by 李子鸣 on 2022/1/16.
//

import SwiftUI

struct RegisterTextField: View {
    @Binding var username :String
    @Binding var password :String
    @Binding var confirm_password :String
    var body: some View {
        VStack(alignment: .center, spacing: 28){
            Image("Login_TopPic")
                .frame(width: 287, height: 167)
                .padding(.bottom, 30)
            Group{
                FormField(fieldName: "Username", fieldValue: $username, img: "Login_Person", isSecure: false)
                FormField(fieldName: "Password", fieldValue: $password, img: "Login_Lock", isSecure: true)
                    .offset(y:-10)
                FormField(fieldName: "Password again", fieldValue: $confirm_password, img: "Login_Lock", isSecure: true)
                    .offset(y:-20)
            }

        }
    }
}

//struct RegisterTextField_Previews: PreviewProvider {
//    static var previews: some View {
//        RegisterTextField()
//    }
//}
