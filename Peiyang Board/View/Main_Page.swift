//
//  Main_Page.swift
//  Peiyang Board
//
//  Created by 李子鸣 on 2022/1/10.
//

import SwiftUI

struct Main_Page: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack{
                Head_view();
            }
        }
        
        
    }
}


@ViewBuilder
func Head_view()->some View{
    HStack(){
        VStack{
            Text("\(time.month)月\(time.day)日")
                .font(.system(size: 40))
                .foregroundColor(Color("Main_Font"))
                .position(x: 100, y: 40)
            Path{path in
                path.move(to: CGPoint(x: 35, y: 30))
                path.addLine(to: CGPoint(x: 163, y: 30))
                
            }
            .strokedPath(StrokeStyle(lineWidth: 2.5, lineCap: .round, lineJoin: .round))
            .fill(Color("Main_Font"))
            
            HStack{
                Text("总消息数")
                    .font(.system(size: 20))
                    .foregroundColor(Color("Main_Font"))
                    .position(x: 70, y: 5)
                
                Text("\(Information.count)")
                    .font(.system(size: 20))
                    .foregroundColor(Color("Main_Font"))
                    .position(x: 60, y: 5)
            }
        }
        HStack{
            ZStack{
                Text("@")
                    .font(.system(size: 100))
                    .foregroundColor(Color("Main_Font"))
                    .position(x: 120, y: 44)
                
                Image("user")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .position(x: 120, y: 50)
            }
        }
    }
}


struct Main_Page_Previews: PreviewProvider {
    static var previews: some View {
        Main_Page()
    }
}
