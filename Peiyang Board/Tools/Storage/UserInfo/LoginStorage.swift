//
//  LoginStorage.swift
//  Peiyang Board
//
//  Created by 李子鸣 on 2022/1/10.
//

import Foundation
import SwiftUI

var str_isneedLogin = "isneedLogin"
var str_username = "username"
var str_password = "password"

final class Login_storage: ObservableObject{
    init(){

        UserDefaults.standard.register(defaults: [
            str_isneedLogin : true,
            str_username : "username",
            str_password : "password"])

        isneedLogin = UserDefaults.standard.bool(forKey: str_isneedLogin)
        username = UserDefaults.standard.string(forKey: str_username)!
        password = UserDefaults.standard.string(forKey: str_password)!
    }
    
     var isneedLogin: Bool = UserDefaults.standard.bool(forKey: str_isneedLogin) {
        didSet{
            UserDefaults.standard.set(isneedLogin, forKey: str_isneedLogin)
        }
    }

    @State var username: String! = UserDefaults.standard.string(forKey: str_username){
        didSet{
            UserDefaults.standard.set(username, forKey: str_username)
        }
    }
    
    @State var password: String! = UserDefaults.standard.string(forKey: str_password) {
        didSet{
            UserDefaults.standard.set(password, forKey: str_password)
        }
    }
}
var login_Storage = Login_storage()      //初始化登陆实例
