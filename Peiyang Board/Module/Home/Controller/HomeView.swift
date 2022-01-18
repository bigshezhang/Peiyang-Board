//
//  HomeView.swift
//  Peiyang Board
//
//  Created by 李子鸣 on 2022/1/10.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
//        NavigationView{
//
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
                        .padding(.top,ByHeight(Scale: -4))
                        .padding(.bottom,ByHeight(Scale: 0.1))
//                    MainPageNaviList()
//                        .frame(width:ScreenWidth, height: ScreenHeight)
//                    MainPageNaviRow()

                    ForEach(notis.indices,id: \.self){ i in
                        MainPageNaviRow(noti: notis[i])
//                            .lineSpacing(20)
                    }
                    Spacer()
                        .padding(.bottom,ByHeight(Scale: 20))
                }
                
            }
            .ignoresSafeArea(.all)
            .navigationBarHidden(true)
//        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
