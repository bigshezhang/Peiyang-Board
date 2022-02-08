//
//  BaseView.swift
//  Peiyang Board
//
//  Created by 李子鸣 on 2022/1/14.
//

import SwiftUI

struct MainView: View {
    init(){
        //UITabBar.appearance().backgroundImage = UIImage()
        //UITabBar.appearance().backgroundColor = UIColor.white
       // UITabBar.appearance().shadowImage = UIImage()

    }
    
    //去除TabView背景色
    
    var body: some View {
        NavigationView {
            Footer_View()
        }
    }
}

@ViewBuilder
func Footer_View() -> some View{
    TabView {
        HomeView()
         .tabItem {
            Image(systemName: "checkmark.circle")
                 .symbolRenderingMode(.hierarchical)
                 .foregroundColor(.blue)
            Text("已完成")
          }
        Image(systemName: "figure.walk")
         .tabItem {
            Image(systemName: "figure.walk")
            Text("未完成")
          }
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
