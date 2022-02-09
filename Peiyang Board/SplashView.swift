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
    @State private var isSplashLoaded = false        //Whether Splashing Loaded
    @State private var isSplashing: Bool = true
    var body: some View {
        ZStack{
            if(isSplashing) {
                ZStack{
                    VStack{
                        Image("SplashView_Head")
                            .offset(y: isSplashLoaded ? -150 : 0)
                            .animation(Animation.default.delay(0.75).speed(0.5))
                        Spacer()
                    }
                    
                    VStack{
                        Image("北洋看板")
                            .scaleEffect(0.93)
                            .padding(3)
                        Image("Peiyang Bulletin Board")
                            .scaleEffect(0.92)
                    }
                    .padding(.bottom,ByHeight(Scale: 10))
                    .opacity(isSplashLoaded ? 0 : 1)
                    .animation(Animation.default.delay(0.3).speed(0.25))
                    
                    VStack{
                        Spacer()
                        Image("SplashView_Foot")
                            .offset(y: isSplashLoaded ? 300 : 0)
                            .animation(Animation.default.delay(0.75).speed(0.5))
                    }
                }
                .onAppear(){
                    isSplashLoaded = true
                }
                .ignoresSafeArea()
                .onAppear(perform: end_splashing)
            } else if !login_Storage.isneedLogin {
                MainView() //如果不需要登陆，进入主页面
                    .onAppear(perform: InitAll)
                    .onAppear(){
                        print(login_Storage.isneedLogin)
                    }
            } else{
                LoginPage() //需要登陆
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
