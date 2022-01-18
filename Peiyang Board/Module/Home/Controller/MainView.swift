//
//  BaseView.swift
//  Peiyang Board
//
//  Created by 李子鸣 on 2022/1/14.
//

import SwiftUI

struct BaseView: View {
    var body: some View {
        Footer_View()
    }
}

@ViewBuilder
func Footer_View() -> some View{
    TabView {
        MainPage()
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


struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
