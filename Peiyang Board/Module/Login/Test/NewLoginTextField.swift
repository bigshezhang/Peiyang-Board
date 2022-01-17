//
//  NewLoginTextField.swift
//  Peiyang Board
//
//  Created by 李子鸣 on 2022/1/17.
//

import SwiftUI

struct NewLoginTextField: View {
    @Binding var username: String
    @Binding var password: String
    var body: some View {
        
        VStack(alignment: .center, spacing: 28){
            Image("Login_TopPic")
//                .frame(width: 287, height: 167)
                .padding(.bottom, 30)
            Group{
                FormField2(fieldName: "Username", fieldValue: $username, img: "Login_Person", isSecure: false)

                FormField2(fieldName: "Password", fieldValue: $password, img: "Login_Lock", isSecure: true)
//                    .offset(y:-10)
            }
        }

    }
}

struct FormField2: View{
    var fieldName = ""
    @Binding var fieldValue: String
    var img: String
    var isSecure = false
    @State var isShowingPW = false
    var body: some View {
        if isSecure{
            VStack {
                HStack {
                    Image(img)
                        .padding(.leading,10)
                    if !isShowingPW {
                        SecureField("", text: $fieldValue)
                            .placeholder(when: fieldValue.isEmpty) {
                                Text(fieldName)
                                    .foregroundColor(Color("Blue_Login_Text"))
                            }
                            .foregroundColor(Color("Blue_Login_Text"))
                            .font(.custom(RTW, size: 32))
//                            .frame(width: 210, alignment: .center)
                            .padding(.leading)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                    } else{
                        TextField("", text: $fieldValue)
                            .placeholder(when: fieldValue.isEmpty) {
                                Text(fieldName).foregroundColor(Color("Blue_Login_Text"))}
                            .foregroundColor(Color("Blue_Login_Text"))
                            .font(.custom(RTW, size: 32))
//                            .frame(width: 210, alignment: .center)
                            .padding(.leading)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                        }
                    
                    Button(action: {isShowingPW.toggle()}){
                        Image(isShowingPW ? "Close_Eye" : "Open_Eye")
                            .frame(width: 20, height: 20)
                            .offset(x:5)//使用frame防止视图随着图片大小变化而错位
                    }
                }

                Path{path in
                    path.move(to: CGPoint(x: 35, y: 0))
                    path.addLine(to: CGPoint(x: 350, y: 0))
                }
                .strokedPath(StrokeStyle(lineWidth: 2.5, lineCap: .round, lineJoin: .round))
                .fill(Color("Blue_Login_TextBorder"))
                .frame(height: 2.5)
            }
        } else{
            VStack {
                HStack {
                    Image(img)
                        .padding(.leading,10)
                    TextField("", text: $fieldValue)
                        .placeholder(when: fieldValue.isEmpty) {
                            Text("Username").foregroundColor(Color("Blue_Login_Text"))}
                        .foregroundStyle(Color("Blue_Login_Text"))
                        .font(.custom(RTW, size: 32))
//                        .frame(width: 239, alignment: .center)
                        .padding(.leading)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    
                }
                
                Path{path in
                    path.move(to: CGPoint(x: 35, y: 0))
                    path.addLine(to: CGPoint(x: 350, y: 0))
                }
                .strokedPath(StrokeStyle(lineWidth: 2.5, lineCap: .round, lineJoin: .round))
                .fill(Color("Blue_Login_TextBorder"))
                .frame(height: 2.5)
            }
        }
    }
}

//struct NewLoginTextField_Previews: PreviewProvider {
//    static var previews: some View {
//        NewLoginTextField()
//    }
//}
