//
//  SplashView.swift
//  Peiyang Board
//
//  Created by 李子鸣 on 2022/1/11.
//

import SwiftUI
import UIKit
import Combine

class TimeHelp {
    
    var canceller: AnyCancellable?
        
    //每次都新建一个计时器
    func start(receiveValue: @escaping (() -> Void)) {
        let timerPublisher = Timer
            .publish(every: 1, on: .main, in: .common)
            .autoconnect()
        
        self.canceller = timerPublisher.sink { date in
            receiveValue()
        }
    }
    
    //暂停销毁计时器
    func stop() {
        canceller?.cancel()
        canceller = nil
    }
}


struct SplashView: View {

    @State private var isloading = false
    @State private var isSplashing: Bool = true
    @State var isPresented = false
    let timer = Timer.publish(every: 1, on: .main, in: .common)
    @State private var second = 5.0
    private let timeHelper = TimeHelp()
    @State private var end = true
    
    var body: some View {
        
        if(isSplashing) {
            VStack{
                Image("SplashView_Head")
                    .offset(y: isloading ? -150 : -0)
                    .animation(Animation.default.delay(0.8).speed(0.5))
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
                .scaleEffect(isloading ? 20: 1)
                .animation(Animation.default.delay(0.3).speed(0.2))
                Spacer()
                Image("SplashView_Foot")
                    .offset(y: isloading ? 300 : 0)
                    .animation(Animation.default.delay(0.8).speed(0.5))
            }
            .onAppear(){
                isloading = true
            }
            .ignoresSafeArea()
            .onAppear(perform: end_splashing)
        } else {
            Main_Page()
        }
        
    }
//        {
            
            
            
//            guard self.end else {return}
//            self.end = false
//            self.second = 3
//            self.timeHelper.start {
//                // print(second)
//                if self.second > 1 {
//                    _ = self.second -= 1
//                }else{
//                    //暂停
//                    self.end = true
//                    self.timeHelper.stop()
//                    self.isPresented = true
//                }
//            }
        
//        .fullScreenCover(isPresented: $isPresented) {
//        } content: {
//            Main_Page()
//        }
        //end_splashing()

    func end_splashing() {
        let now = Date()
        let timeInterval: TimeInterval = now.timeIntervalSince1970
        let timeStamp = Int(timeInterval)
        
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
