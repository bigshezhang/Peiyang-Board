//
//  MainPage.swift
//  Peiyang Board
//
//  Created by 李子鸣 on 2022/1/10.
//

import SwiftUI

struct MainPage: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack{
                ZStack {
                    Image("MainPage_Head")
                        .frame(width: UIScreen.main.bounds.width)
                        .offset(y:-20)
                    MainPageHeader()
                        .offset(y:10)
                }
                .frame(width: UIScreen.main.bounds.width)
                
                MainWeekIndicator()
            }
        }
        .ignoresSafeArea(.all)
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
