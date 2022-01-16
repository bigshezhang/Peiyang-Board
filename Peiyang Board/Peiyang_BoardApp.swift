//
//  Peiyang_BoardApp.swift
//  Peiyang Board
//
//  Created by 李子鸣 on 2022/1/10.
//

import SwiftUI

@main
struct Peiyang_BoardApp: App {
    @EnvironmentObject var login_Storage : Login_storage
    var body: some Scene {
        WindowGroup {
            
            SplashView()
        }
    }
}
