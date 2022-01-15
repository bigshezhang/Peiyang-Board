//
//  SplashView.swift
//  Peiyang Board
//
//  Created by 李子鸣 on 2022/1/11.
//

import SwiftUI
import UIKit
import Combine

struct SplashView: View {

    @State private var isloading = false
    @State private var isSplashing: Bool = true
    
    var body: some View {
        
        if(isSplashing) {
            VStack{
                Image("SplashView_Head")
                    .offset(y: isloading ? -150 : 0)
                    .animation(Animation.default.delay(0.75).speed(0.5))
                Spacer()
                Spacer()
                Spacer()
                VStack{
                    Image("北洋看板")
                        .scaleEffect(0.93)
                        .padding(3)
                    Image("Peiyang Bulletin Board")
                        .scaleEffect(0.92)
                }
                .opacity(isloading ? 0 : 1)
                .animation(Animation.default.delay(0.3).speed(0.25))
                Spacer()
                Image("SplashView_Foot")
                    .offset(y: isloading ? 300 : 0)
                    .animation(Animation.default.delay(0.75).speed(0.5))
            }
            .onAppear(){
                isloading = true
            }
            .ignoresSafeArea()
            .onAppear(perform: end_splashing)
        } else if !login_Storage.isneedLogin {
            LoginTextField()
            //BaseView() //进入主页面
        } else{
            LoginTextField()
                .onAppear(){
                    login_Storage.isneedLogin.toggle()
                }
        }
    }
    func end_splashing() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            // 结束splash
            withAnimation(.easeInOut(duration: 2)){
                isSplashing = false
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
