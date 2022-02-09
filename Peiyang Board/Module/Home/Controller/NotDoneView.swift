//
//  NotDoneView.swift
//  Peiyang Board
//
//  Created by 李子鸣 on 2022/1/10.
//

import SwiftUI

struct NotDoneView: View {
    var body: some View {
        NavigationView {
            ZStack{
                VStack{
                    HStack{
                        Spacer()
                        Image("MainPage_Head")
                            .frame(width: UIScreen.main.bounds.width)
                            .offset(y:-20)
                    }
                    Spacer()
                }
                ScrollView(.vertical, showsIndicators: false){
                    VStack{
                        MainPageHeader()
                            .padding(.top)
                        
                        MainWeekIndicator()
                            .padding(.top,ByHeight(Scale: -5))
                            .padding(.bottom,ByHeight(Scale: 0.1))

                        ForEach(notis.indices,id: \.self){ i in
                            MainPageNaviRow(noti: notis[i])
                        }

                        Spacer()
                            .padding(.bottom,ByHeight(Scale: 20))
                    }
                }
                .navigationBarHidden(true)
            }
            .ignoresSafeArea(.all)
        }
    }
}

struct NotDoneView_Previews: PreviewProvider {
    static var previews: some View {
        NotDoneView()
    }
}
