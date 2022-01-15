//
//  LoginTextField.swift
//  Peiyang Board
//
//  Created by 李子鸣 on 2022/1/15.
//

import SwiftUI

struct LoginTextField: View {
    @State var username = ""
    @State var password = ""

    var body: some View {
        VStack(){
            FormField(fieldName: "Username", fieldValue: $username, img: "Login_Person", isSecure: false)
            FormField(fieldName: "Password", fieldValue: $password, img: "Login_Lock", isSecure: true)
        }
        
    }
}


struct FormField: View{
    var fieldName = ""
    @Binding var fieldValue: String
    var img: String
    var isSecure = false
    
    var body: some View {
        HStack(){
            Image(img)
            if isSecure{
                SecureField(fieldName, text: $fieldValue)
                    .frame(width: 239, alignment: .center)
                    .font(.custom("RTWSShangYaDemo-Regular", size: 32))

            } else{
                TextField(fieldName,text: $fieldValue)
                    .padding(.horizontal)
            }
        }
    }
}

struct LoginTextField_Previews: PreviewProvider {
    static var previews: some View {
        LoginTextField()
    }
}

