

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

struct ContentView: View {
    @State private var remoteImage :UIImage? = nil
    @State var isPresented = false
    let placeholderOne = UIImage(named: "Image1")
    // 这里的Image1为工程资源文件夹中的图片资源名，自己随便创建一个就行
    
    let timer = Timer.publish(every: 1, on: .main, in: .common)
    
    @State private var second = 5
    private let timeHelper = TimeHelp()
    @State private var end = true
                
    var body: some View {
        ZStack
        {
            Button("跳过 \(second)"){
                self.isPresented = true
            }
            .position(x: UIScreen.main.bounds.width - 45, y: 10.0)
            .onAppear()
            {
                guard self.end else {return}
                self.end = false
                self.second = 3
                self.timeHelper.start {
                    // print(second)
                    if self.second > 1 {
                        _ = self.second -= 1
                    }else{
                        //暂停
                        self.end = true
                        self.timeHelper.stop()
                        self.isPresented = true
                    }
                }
            }
            .fullScreenCover(isPresented: $isPresented) {
                print("消失")
            } content: {
                DetailView(message: "I'm missing you")
            }
            
//            Image(uiImage: self.remoteImage ?? placeholderOne)
//            // Image(uiImage: self.placeholderOne!)
//                .resizable()
//                .scaledToFit()
//                // .aspectRatio(contentMode: .fill)
//                .onAppear(perform: fetchRemoteImg)
        }
    }
    
    func fetchRemoteImg()
    {
        guard let url = URL(string: "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/iphone-12-pro-family-hero?wid=940&amp;hei=1112&amp;fmt=jpeg&amp;qlt=80&amp;.v=1604021663000") else {return}
        
        URLSession.shared.dataTask(with: url)
        {
            (data, response, error) in
            if let img = UIImage(data: data!)
            {
                self.remoteImage = img
            }
            else
            {
                print(error ?? "1")
            }
        }
        .resume()
    }
}


struct DetailView: View{
    let message: String
    
    var body: some View {
        VStack
        {
            Text(message)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

