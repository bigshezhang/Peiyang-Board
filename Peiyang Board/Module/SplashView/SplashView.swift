//
//  SplashView.swift
//  Peiyang Board
//
//  Created by 李子鸣 on 2022/1/11.
//

import SwiftUI

struct SplashView: View {
    @State private var isloading = false
    var body: some View {
        VStack{
            Image("SplashView_Head")
                .offset(y: isloading ? -150 : -0)
                .animation(Animation.default.delay(0.2))
            Spacer()
            Spacer()
            Spacer()
            VStack{
                Image("北洋看板")
                    .scaleEffect(0.93)
                    .padding(3)
                    .onTapGesture {
                        isloading = true
                    }
                Image("Peiyang Bulletin Board")
                    .scaleEffect(0.92)
            }
            .opacity(isloading ? 0 : 1)
            .animation(Animation.default.delay(0.6).speed(0.9))
            .scaleEffect(isloading ? 20: 1)
            .animation(Animation.default.delay(0).speed(0.1))
            Spacer()
            Image("SplashView_Foot")
                .offset(y: isloading ? 300 : 0)
                .animation(Animation.default.delay(0.1).speed(0.5))
        }
        .onAppear(){
            isloading = true
        }
        .ignoresSafeArea()
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
