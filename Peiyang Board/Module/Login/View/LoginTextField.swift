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
    @State var show_pw = false
    var body: some View {
        VStack(spacing: 30){
            Spacer()
            Spacer()
            Image("Login_TopPic")
                .frame(width: 287, height: 167)
                .scaleEffect(0.95)
                .padding(.bottom, 50)
                .offset(y:-50)
            Spacer(minLength: 50)
            FormField(fieldName: "Username", fieldValue: $username, img: "Login_Person", isSecure: false)
            FormField(fieldName: "Password", fieldValue: $password, img: "Login_Lock", isSecure: true)
            Spacer()
            Spacer()
            Spacer()
            
        }
        
    }
}


struct FormField: View{
    var fieldName = ""
    @Binding var fieldValue: String
    var img: String
    var isSecure = false
    
    var body: some View {
        if isSecure{
            VStack {
                HStack {
                    Image(img)
                    SecureField("", text: $fieldValue)
                        .placeholder(when: fieldValue.isEmpty) {
                            Text("Password").foregroundColor(Color("Blue_Login_Text"))}
                        .foregroundColor(Color("Blue_Login_Text"))
                        .font(.custom("RTWSShangYaDemo-Regular", size: 32))
                        .frame(width: 239, alignment: .center)
                        .padding(.leading)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                }
                
                Path{path in
                    path.move(to: CGPoint(x: 35, y: 0))
                    path.addLine(to: CGPoint(x: 345, y: 0))
                }
                .strokedPath(StrokeStyle(lineWidth: 2.5, lineCap: .round, lineJoin: .round))
                .fill(Color("Blue_Login_TextBorder"))
                .frame(height: 2.5)
            }
        } else{
            VStack {
                HStack {
                    Image(img)
                    TextField("", text: $fieldValue)
                        .placeholder(when: fieldValue.isEmpty) {
                            Text("Username").foregroundColor(Color("Blue_Login_Text"))}
                        .foregroundStyle(Color("Blue_Login_Text"))
                        .font(.custom("RTWSShangYaDemo-Regular", size: 32))
                        .frame(width: 239, alignment: .center)
                        .padding(.leading)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                }
                
                Path{path in
                    path.move(to: CGPoint(x: 35, y: 0))
                    path.addLine(to: CGPoint(x: 345, y: 0))
                }
                .strokedPath(StrokeStyle(lineWidth: 2.5, lineCap: .round, lineJoin: .round))
                .fill(Color("Blue_Login_TextBorder"))
                .frame(height: 2.5)
            }
        }
    }
}

struct LoginTextField_Previews: PreviewProvider {
    static var previews: some View {
        LoginTextField()
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {
        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
