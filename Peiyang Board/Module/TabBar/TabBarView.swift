//
//  TabBarView.swift
//  Peiyang Board
//
//  Created by 李子鸣 on 2022/2/8.
//

import SwiftUI

struct TabBarView: View {
    
    @StateObject var viewRouter: ViewRouter
    
    var body: some View {
        GeometryReader { GeometryProxy in
            let IconWidth = GeometryProxy.size.width/5
            let IconHeight = GeometryProxy.size.height/15
            VStack {
                Spacer()
//                Spacer()
                ZStack{
                    HStack{
                        Rectangle()
                            .background(.clear)
                            .background(.ultraThinMaterial)
                    }
                    .frame(width: GeometryProxy.size.width, height: GeometryProxy.size.height/8)
                    
                    HStack(spacing: GeometryProxy.size.width/15){
                        TabBarIcon(IconName: "person.fill.questionmark", tabName: "未完成  ", width: IconWidth, height: IconHeight,color: .blue, viewRouter: viewRouter, assignedPage: .NotDone)
                        
                        ZStack{
                            Circle()
                                .foregroundColor(.white)
                                .frame(width: GeometryProxy.size.width/5, height: GeometryProxy.size.width/5)
                                .shadow(radius: 4)
                            
                            Image(systemName: "magnifyingglass.circle")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: GeometryProxy.size.width/5-6, height: GeometryProxy.size.width/5-6)
                                .foregroundColor(.orange)
                        }
                        .onTapGesture {
                            viewRouter.currentPage = Page.Search
                        }
                        .offset(y: -GeometryProxy.size.height/25)
                        
                        TabBarIcon(IconName: "star.square", tabName: "收藏箱", width: IconWidth, height: IconHeight,color: .yellow, viewRouter: viewRouter, assignedPage: .StarBox)
                    }
                }
            }
            .ignoresSafeArea(.all)
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(viewRouter: ViewRouter())
    }
}

struct TabBarIcon: View {
    let IconName, tabName: String
    let width, height: CGFloat
    let color: Color
    @StateObject var viewRouter: ViewRouter
    let assignedPage : Page
    
    var body: some View {
        VStack{
            Image(systemName: IconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
                .padding(.top, 10)
                .symbolRenderingMode(.hierarchical)
                .foregroundColor(color)
            Text(tabName)
        }
        .onTapGesture {
            viewRouter.currentPage = assignedPage
            print(viewRouter.currentPage)
        }
    }
}
    
