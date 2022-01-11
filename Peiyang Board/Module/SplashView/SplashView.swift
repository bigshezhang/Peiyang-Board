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
                .animation(Animation.default.repeatForever(autoreverses: true))
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
            RoundedRectangle(cornerRadius: 3)
                .stroke(Color.gray, lineWidth: 3)
                .frame(width: 250, height: 3)
            RoundedRectangle(cornerRadius: 3)
                .stroke(Color.blue, lineWidth: 3)
                .frame(width: 30, height: 3)
                .offset(x: isloading ? -110 : 110 , y:0)
                .animation(Animation.linear(duration: 1).repeatForever(autoreverses: true))
                .offset(y: -11)
            Spacer()
            Image("SplashView_Foot")
                .offset(y: isloading ? 200 : 0)
                .animation(Animation.default.repeatForever(autoreverses: true))
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
