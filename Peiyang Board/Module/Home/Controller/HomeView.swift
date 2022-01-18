//
//  MainPage.swift
//  Peiyang Board
//
//  Created by 李子鸣 on 2022/1/10.
//

import SwiftUI

struct MainPage: View {
    var body: some View {
        
//        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack{
    //                MainPageNaviList()
                    ZStack {
                        Image("MainPage_Head")
                            .frame(width: UIScreen.main.bounds.width)
                            .offset(y:-20)
                        MainPageHeader()
                            .offset(y:10)
                    }
                    .frame(width: UIScreen.main.bounds.width)
                    
                    MainWeekIndicator()
                        .padding(.top,-35)
                    
                    MainPageNaviRow()
                    Spacer()
                }
                
            }
            .ignoresSafeArea(.all)
//        }
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
